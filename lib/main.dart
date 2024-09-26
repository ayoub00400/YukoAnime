import 'package:flutter/material.dart';

import 'config/routes/routing_manager.dart';

void main() {
  runApp(const YukoAnimeApp());
}

class YukoAnimeApp extends StatelessWidget {
  const YukoAnimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Yuko Anime',
      debugShowCheckedModeBanner: false,
      routerConfig: RoutingManager.router,
    );
  }
}
