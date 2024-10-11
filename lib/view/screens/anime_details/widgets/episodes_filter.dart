import 'package:flutter/material.dart';
import 'package:yuko_anime/utils/constants.dart';

// ignore: must_be_immutable
class EpisodesFilter extends StatelessWidget {
  List<String> seasons = ["season 01", "season 02", "season 03"];
  EpisodesFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: .7,
          child: DropdownMenu(
              hintText: 'Seasons',
              dropdownMenuEntries: seasons
                  .map(
                    (e) => DropdownMenuEntry(value: e, label: e),
                  )
                  .toList()),
        ),
        const Spacer(),
        Icon(
          Icons.more_vert,
          color: AppColorsPallette.lightThemeColors.first,
        )
      ],
    );
  }
}
