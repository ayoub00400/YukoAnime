import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_project/view/screens/home/cubit/home_cubit.dart';
import 'package:template_project/view/screens/home/widgets/featured_anime_page_view.dart';

import '../../../utils/constants.dart';
import 'widgets/manga_section.dart';
import 'widgets/top_trending_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()
        ..loadTopTrendingAnime()
        ..loadTopTrendingManga(),
      child: Scaffold(
        backgroundColor: AppColorsPallette.appBgColor,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 1.5 / 3, child: FeaturedAnimeSection()),
                const TopTrendingSection(),
                const MangaSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
