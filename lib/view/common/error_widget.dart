import 'package:flutter/material.dart';

import '../../utils/images_strings.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppImages.errorImg,
          height: MediaQuery.of(context).size.width * 2 / 4,
          width: MediaQuery.of(context).size.width * 2 / 4,
        ),
        const Align(alignment: Alignment.center, child: Text("Error Happened plz try later.")),
      ],
    );
  }
}
