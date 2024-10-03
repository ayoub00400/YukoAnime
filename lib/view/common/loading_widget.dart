import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: SizedBox(
            height: 30,
            width: 30,
            child: CircularProgressIndicator(
              color: AppColorsPallette.primaryColors.first,
            )));
  }
}
