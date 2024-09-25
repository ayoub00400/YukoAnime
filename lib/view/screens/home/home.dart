import 'package:flutter/material.dart';
import 'package:template_project/view/screens/home/widgets/featured_anime_page_view.dart';

import 'widgets/manga_section.dart';
import 'widgets/top_trending_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 1.5 / 3, child: FeaturedAnimeScreen()),
              const TopTrendingSection(),
              const MangaSection()
            ],
          ),
        ),
      ),
    );
  }
}
