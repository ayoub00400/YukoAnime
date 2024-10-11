import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:yuko_anime/model/character.dart';
import 'package:yuko_anime/repositories/remote/anime/anime_repository_impl.dart';

import '../../../../model/anime.dart';

part 'anime_details_state.dart';

class AnimeDetailsCubit extends Cubit<AnimeDetailsState> {
  final Anime animeData;
  List<Character> animeCharacters = [];
  late WebViewController videoController;
  final AnimeRepositoryImpl animeRepositoryImpl = AnimeRepositoryImpl();
  AnimeDetailsCubit(this.animeData) : super(AnimeDetailsInitial());
  void loadTrailer() async {
    if (animeData.trailer.embedUrl == null) {
      emit(AnimeDetailsLoadFailed());
      return;
    }
    emit(AnimeDetailsLoading());
    videoController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(animeData.trailer.embedUrl!.replaceFirst('&wmode=opaque', '')));
    emit(AnimeDetailsLoaded());
  }

  void loadAnimeCharacters(int animeId) async {
    try {
      emit(AnimeDetailsLoading());
      animeCharacters = await animeRepositoryImpl.getAnimeCharacters(animeId: animeId);
      emit(AnimeDetailsLoaded());
    } on Exception catch (e) {
      emit(AnimeDetailsLoadFailed());
    }
  }
}
