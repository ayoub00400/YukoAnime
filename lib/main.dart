import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'config/routes/routing_manager.dart';
import 'utils/urls.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  Urls.baseUrl = dotenv.get('API_BASE_URL');

  runApp(const YukoAnimeApp());
}

class YukoAnimeApp extends StatelessWidget {
  const YukoAnimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Yuko Anime',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routerConfig: RoutingManager.router,
    );
  }
}
