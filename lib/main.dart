import 'package:flutter/material.dart';
import 'package:template_project/view/screens/browse/browse.dart';

import 'view/screens/profile/profile.dart';
import 'view/screens/shop/shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter Demo', debugShowCheckedModeBanner: false, home: ProfileScreen());
  }
}
