import 'package:template_project/view/screens/browse/browse.dart';
import 'package:template_project/view/screens/my_list/my_list.dart';
import 'package:template_project/view/screens/profile/profile.dart';
import 'package:template_project/view/screens/shop/shop.dart';

import '../../home/home.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'app_layout_state.dart';

class AppLayoutCubit extends Cubit<AppLayoutState> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int pageIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const MyListScreen(),
    const BrowseScreen(),
    const ShopScreen(),
    const ProfileScreen(),
  ];

  AppLayoutCubit() : super(AppLayoutInitial());

  void changePage(int index) {
    pageIndex = index;
    emit(PageChanged());
  }
}
