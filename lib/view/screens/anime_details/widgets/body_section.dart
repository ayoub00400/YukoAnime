import 'package:flutter/material.dart';

import 'anime_characters.dart';
import 'episodes_list.dart';

class BodySection extends StatefulWidget {
  const BodySection({super.key});

  @override
  State<BodySection> createState() => _BodySectionState();
}

class _BodySectionState extends State<BodySection> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ValueNotifier _pageIndex = ValueNotifier(0);
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 100,
          child: TabBar(
            dividerHeight: 0.1,

            // <-- Your TabBar
            onTap: (value) {
              _pageIndex.value = value;
            },
            automaticIndicatorColorAdjustment: true,
            isScrollable: true,
            controller: _tabController,

            tabAlignment: TabAlignment.start,
            tabs: const [
              Tab(
                child: Text('Episodes'),
              ),
              Tab(
                child: Text('Characters'),
              ),
            ],
          ),
        ),
        ValueListenableBuilder(
            valueListenable: _pageIndex,
            builder: (context, value, child) {
              return IndexedStack(
                index: _pageIndex.value,
                children: [Expanded(child: EpisodesList()), Expanded(child: AnimeCharactersList())],
              );
            }),
      ],
    );
  }
}
