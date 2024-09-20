import 'package:flutter/material.dart';

import '../../../utils/images_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppImages.logo,
          width: MediaQuery.of(context).size.width * 1.5 / 4,
        ),
      ),
    );
  }
}
