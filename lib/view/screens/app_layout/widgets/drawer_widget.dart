// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
// import 'package:iconsax/iconsax.dart';

// import '../../../../config/routes/routing_manager.dart';
// import '../../../../main.dart';
// import '../../../../utils/constants.dart';
// import '../../../../utils/extensions/app_context_helper.dart';
// import '../../login/cubit/login_cubit.dart';
// import '../cubit/home_layout_cubit.dart';
// import 'drawer_item.dart';

// class AppDrawer extends StatelessWidget {
//   const AppDrawer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     String username;
//     String email;
//     // if (loginCubitInstance.isLogin) {
//     //   username = 'Ayoub'; //Prefs.getString(SPKeys.userName);
//     //   email = 'Ayoub004@gmail.com'; //Prefs.getString(SPKeys.email);
//     // } else {
//     //   username = 'User';
//     //   email = 'User@gmail.com';
//     // }

//     return SafeArea(
//       child: Drawer(
//         child: Container(
//           width: MediaQuery.of(context).size.width * 0.3,
//           color: context.theme.colorScheme.surface,
//           child: Column(
//             children: [
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 5),
//                 child: GestureDetector(
//                   onTap: () async {
//                     BlocProvider.of<HomeLayoutCubit>(context).scaffoldKey.currentState!.closeDrawer();
//                     BlocProvider.of<HomeLayoutCubit>(context).changePage(2);
//                   },
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 75,
//                         height: 75,
//                         margin: const EdgeInsets.symmetric(
//                           vertical: AppConstants.halfMediumPadding,
//                           horizontal: AppConstants.mediumPadding,
//                         ),
//                         child: CircleAvatar(
//                           backgroundColor: AppConstants.primaryColor,
//                           child: Center(
//                             child: Text(
//                               username[0].toUpperCase(),
//                               style: context.theme.textTheme.displayLarge!.copyWith(color: Colors.white, fontSize: 30),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Flexible(
//                         fit: FlexFit.loose,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               username,
//                               style: context.theme.textTheme.displayLarge!.copyWith(fontSize: 22),
//                             ),
//                             const SizedBox(height: 10),
//                             Text(
//                               email,
//                               style: context.theme.textTheme.titleLarge,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               DrawerItem(
//                 text: 'language',
//                 icon: Icon(Icons.language, color: context.theme.iconTheme.color),
//                 onTap: () {
//                   GoRouter.of(context).push(RoutingManager.languageScreen);
//                 },
//               ),
//               Divider(
//                 color: context.theme.shadowColor.withAlpha(20),
//                 height: 0,
//               ),
//               DrawerItem(
//                 text: 'Notifications',
//                 icon: Icon(
//                   Iconsax.notification,
//                   color: context.theme.iconTheme.color,
//                 ),
//                 onTap: () {},
//               ),
//               DrawerItem(
//                 text: 'context.theme',
//                 icon: Icon(Iconsax.bucket, color: context.theme.iconTheme.color),
//                 onTap: () {
//                   GoRouter.of(context).push(RoutingManager.themeScreen);
//                 },
//               ),

//               DrawerItem(
//                 text: 'about',
//                 icon: Icon(
//                   Iconsax.info_circle,
//                   color: context.theme.iconTheme.color,
//                 ),
//                 onTap: () async {
//                   // LocalDatabase.getAll().then((value) => debugPrint(value.length.toString()));
//                 },
//               ),

//               const Spacer(),
//               Divider(
//                 color: context.theme.shadowColor.withAlpha(20),
//                 height: 0,
//               ),
//               DrawerItem(
//                 text: 'logOut',
//                 icon: const Icon(Iconsax.logout, color: Colors.red),
//                 onTap: () {
//                   BlocProvider.of<LoginCubit>(context).logOut(context);
//                 },
//               ),
//               // Divider(color: Colors.grey.shade300, height: 0),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
