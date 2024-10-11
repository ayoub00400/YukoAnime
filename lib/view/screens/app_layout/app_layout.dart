import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';
import 'package:yuko_anime/utils/constants.dart';

import 'cubit/app_layout_cubit.dart';
import 'widgets/bottom_navbar_item.dart';

class AppLayoutScreen extends StatefulWidget {
  const AppLayoutScreen({super.key});

  @override
  State<AppLayoutScreen> createState() => _AppLayoutScreenState();
}

class _AppLayoutScreenState extends State<AppLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldStateKey = GlobalKey<ScaffoldState>();
    var activeIconColor = AppColorsPallette.primaryColors.first;
    return BlocProvider(
      create: (context) => AppLayoutCubit(),
      child: SafeArea(
        child: Scaffold(
            backgroundColor: AppColorsPallette.appBgColor,
            key: scaffoldStateKey,
            // drawer: const AppDrawer(),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: AppColorsPallette.appBgColor,
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                    type: BottomNavigationBarType.shifting,
                    unselectedIconTheme: IconThemeData(color: Colors.grey.withOpacity(.4), size: 14),
                    selectedLabelStyle: const TextStyle(fontSize: 0)),
              ),
              child: BlocBuilder<AppLayoutCubit, AppLayoutState>(
                builder: (context, state) {
                  return BottomNavigationBar(
                      elevation: 0,
                      selectedIconTheme: const IconThemeData(size: 18),
                      showSelectedLabels: false,
                      type: BottomNavigationBarType.shifting,
                      onTap: (value) {
                        BlocProvider.of<AppLayoutCubit>(context).changePage(value);
                      },
                      currentIndex: BlocProvider.of<AppLayoutCubit>(context).pageIndex,
                      items: [
                        CustomBottomNavBarItem(
                          activeIcon: FontAwesomeIcons.house,
                          activeIconColor: activeIconColor,
                          icon: FontAwesomeIcons.house,
                          label: '',
                        ).build(context),
                        CustomBottomNavBarItem(
                          activeIcon: FontAwesomeIcons.bookmark,
                          activeIconColor: activeIconColor,
                          icon: FontAwesomeIcons.bookmark,
                          label: '',
                        ).build(context),
                        CustomBottomNavBarItem(
                          activeIcon: Icons.window_rounded,
                          activeIconColor: activeIconColor,
                          icon: Icons.window_rounded,
                          label: '',
                        ).build(context),
                        CustomBottomNavBarItem(
                          activeIcon: FontAwesomeIcons.shop,
                          activeIconColor: activeIconColor,
                          icon: FontAwesomeIcons.shop,
                          label: '',
                        ).build(context),
                        CustomBottomNavBarItem(
                          activeIcon: Icons.person,
                          activeIconColor: activeIconColor,
                          icon: Icons.person,
                          label: '',
                        ).build(context),
                      ]);
                },
              ),
            ),
            body: BlocBuilder<AppLayoutCubit, AppLayoutState>(
              builder: (context, state) {
                return IndexedStack(
                  index: BlocProvider.of<AppLayoutCubit>(context).pageIndex,
                  children: BlocProvider.of<AppLayoutCubit>(context).screens,
                );
              },
            )),
      ),
    );
  }
}
