import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuko_anime/utils/constants.dart';
import 'package:yuko_anime/view/screens/anime_details/cubit/anime_details_cubit.dart';

class AnimeCharactersList extends StatelessWidget {
  const AnimeCharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: AppSizes.smallSpacing, crossAxisSpacing: AppSizes.smallSpacing),
          children: BlocProvider.of<AnimeDetailsCubit>(context)
              .animeCharacters
              .map(((character) => Tooltip(
                  preferBelow: true,
                  triggerMode: TooltipTriggerMode.tap,
                  message: character.character.name,
                  child: Container(
                      margin: EdgeInsets.all(AppSizes.extraSmallPadding),
                      clipBehavior: Clip.antiAlias,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image(
                        image: NetworkImage(
                          character.character.images.jpg.imageUrl,
                        ),
                        fit: BoxFit.fill,
                        isAntiAlias: true,
                      )))))
              .toList()),
    );
  }
}
