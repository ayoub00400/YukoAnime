import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yuko_anime/view/screens/browse/cubit/genres_cubit.dart';

import '../../../../utils/constants.dart';
import '../../../common/button_widget.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenresCubit, GenresState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CommonButton(
                onTap: () {
                  BlocProvider.of<GenresCubit>(context).setFilter('Anime');
                },
                height: AppSizes.buttonHeight,
                color: BlocProvider.of<GenresCubit>(context).selectedFilter == 'Anime'
                    ? AppColorsPallette.primaryColors[0]
                    : AppColorsPallette.darkThemeColors[0],
                radiusValue: AppSizes.extraSmallRadius / 2,
                borderColor: BlocProvider.of<GenresCubit>(context).selectedFilter != 'Anime'
                    ? AppColorsPallette.lightThemeColors[0]
                    : Colors.transparent,
                isBorderEnabled: true,
                label: 'Anime',
              ),
              CommonButton(
                onTap: () {
                  BlocProvider.of<GenresCubit>(context).setFilter('Manga');
                },
                height: AppSizes.buttonHeight,
                color: BlocProvider.of<GenresCubit>(context).selectedFilter == 'Manga'
                    ? AppColorsPallette.primaryColors[0]
                    : AppColorsPallette.darkThemeColors[0],
                isBorderEnabled: true,
                borderColor: BlocProvider.of<GenresCubit>(context).selectedFilter != 'Manga'
                    ? AppColorsPallette.lightThemeColors[0]
                    : Colors.transparent,
                radiusValue: AppSizes.extraSmallRadius / 2,
                label: 'Manga',
              ),
              CommonButton(
                onTap: () {
                  BlocProvider.of<GenresCubit>(context).setFilter('Simulcasts');
                },
                height: AppSizes.buttonHeight,
                color: BlocProvider.of<GenresCubit>(context).selectedFilter == 'Simulcasts'
                    ? AppColorsPallette.primaryColors[0]
                    : AppColorsPallette.darkThemeColors[0],
                isBorderEnabled: true,
                borderColor: BlocProvider.of<GenresCubit>(context).selectedFilter != 'Simulcasts'
                    ? AppColorsPallette.lightThemeColors[0]
                    : Colors.transparent,
                radiusValue: AppSizes.extraSmallRadius / 2,
                label: 'Simulcasts',
              ),
            ],
          ),
        );
      },
    );
  }
}
