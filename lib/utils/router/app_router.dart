/// class for app router (Navigation withing the app using Go router)
// final _rootNavigatorKey = GlobalKey<NavigatorState>();
// final _shellNavigatorKey = GlobalKey<NavigatorState>();
//
// class AppRouter {
//   AppRouter._();
//
//   static GoRouter get router => _router;
//
//   static final _router = GoRouter(
//     // Make sure you remove the debugLogDiagnostics flag before going live.
//
//     debugLogDiagnostics: true,
//     initialLocation: MainRoutes.splash,
//
//     navigatorKey: _rootNavigatorKey,
//     routes: [
//       // main navigation
//       ShellRoute(
//         navigatorKey: _shellNavigatorKey,
//         builder: (context, state, child) {
//           return  MainScreens(screen: child);
//           //   BlocProvider(
//           //   create: (context) => NavigationCubit(),
//           //   child:
//           // );
//         },
//         routes: [
//
//           GoRoute(
//             name: MainPages.shop.name,
//             path: MainRoutes.shopScreenName,
//             pageBuilder: (context, state) =>  NoTransitionPage(
//               child: ShopScreen(),
//             ),
//             routes: [
//               GoRoute(
//                 parentNavigatorKey: _rootNavigatorKey,
//                 name: ShopPages.shopPurchasePointsScreen.name,
//                 path: ShopRoutes.shopPurchasePointsRoute,
//                 builder: (context, state) {
//                   final dynamic extra = state.extra;
//                   BuildContext purchasePointsContext =
//                       extra['context'] as BuildContext;
//                   return PurchasePointsScreen(
//                     purchasePointsContext: purchasePointsContext,
//                   );
//                 },
//                 // pageBuilder: (context, state) => const CupertinoPage(
//                 //   child: PurchasePointsScreen(),
//                 // ),
//               ),
//               GoRoute(
//                   parentNavigatorKey: _rootNavigatorKey,
//                   name: ShopPages.shopSeeAllProductScreen.name,
//                   path: ShopRoutes.shopSeeAllProductRoute,
//                   pageBuilder: (context, state) => CupertinoPage(
//                         arguments: [
//                           state.queryParameters['categoryID'],
//                           state.queryParameters['categoryName'],
//                         ],
//                         child: ShopSeeAllProductScreen(
//                           categoryID: state.queryParameters['categoryID'] ?? '',
//                           categoryName:
//                               state.queryParameters['categoryName'] ?? '',
//                         ),
//                       ),
//                   routes: [
//                     GoRoute(
//                       parentNavigatorKey: _rootNavigatorKey,
//                       name: ShopPages.shopProductScreen.name,
//                       path: ShopRoutes.shopProductRoute,
//                       pageBuilder: (context, state) => CupertinoPage(
//                         arguments: [
//                           state.queryParameters['productID'],
//                           state.queryParameters['productName'],
//                           state.queryParameters['productPrice'],
//                         ],
//                         child: ShopProductScreen(
//                           productID: state.queryParameters['productID'] ?? '',
//                           productName:
//                               state.queryParameters['productName'] ?? '',
//                           productPrice:
//                               state.queryParameters['productPrice'] ?? '0',
//                         ),
//                       ),
//                     ),
//                   ]),
//             ],
//           ),
//           GoRoute(
//             name: MainPages.profile.name,
//             path: MainRoutes.profileScreenName,
//             pageBuilder: (context, state) => const NoTransitionPage(
//               child: ProfileScreen(),
//             ),
//             routes: [
//               GoRoute(
//                   parentNavigatorKey: _rootNavigatorKey,
//                   name: ProfilePages.settingsScreen.name,
//                   path: ProfileRoutes.settingsRoute,
//                   builder: (context, state) => const SettingsScreen(),
//                   routes: [
//                     GoRoute(
//                       parentNavigatorKey: _rootNavigatorKey,
//                       name: ProfilePages.editProfileScreen.name,
//                       path: ProfileRoutes.editProfileRoute,
//                       builder: (context, state) => const EditProfileScreen(),
//                     ),
//                     GoRoute(
//                       parentNavigatorKey: _rootNavigatorKey,
//                       name: ProfilePages.myPlanScreen.name,
//                       path: ProfileRoutes.myPlanRoute,
//                       builder: (context, state) => const MyPlanScreen(),
//                     ),
//                     GoRoute(
//                       parentNavigatorKey: _rootNavigatorKey,
//                       name: ProfilePages.purchaseHistoryScreen.name,
//                       path: ProfileRoutes.purchaseHistoryRoute,
//                       builder: (context, state) =>
//                           const PurchaseHistoryScreen(),
//                     ),
//                     GoRoute(
//                       parentNavigatorKey: _rootNavigatorKey,
//                       name: ProfilePages.mySportsLiveStreamScreen.name,
//                       path: ProfileRoutes.mySportsLiveStreamRoute,
//                       builder: (context, state) =>
//                           const MySportsLiveStreamScreen(),
//                     ),
//                     GoRoute(
//                       parentNavigatorKey: _rootNavigatorKey,
//                       name: ProfilePages.helpCenterScreen.name,
//                       path: ProfileRoutes.helpCenterRoute,
//                       builder: (context, state) => const HelpCenterScreen(),
//                     ),
//                     GoRoute(
//                         parentNavigatorKey: _rootNavigatorKey,
//                         name: ProfilePages.privacyScreen.name,
//                         path: ProfileRoutes.privacyRoute,
//                         builder: (context, state) => const PrivacyScreen(),
//                         routes: [
//                           GoRoute(
//                             parentNavigatorKey: _rootNavigatorKey,
//                             name: ProfilePages.privacyPolicyScreen.name,
//                             path: ProfileRoutes.privacyPolicyRoute,
//                             builder: (context, state) =>
//                                 const PrivacyPolicyScreen(),
//                           ),
//                           GoRoute(
//                             parentNavigatorKey: _rootNavigatorKey,
//                             name: ProfilePages.termsAndConditionsScreen.name,
//                             path: ProfileRoutes.termsAndConditionsRoute,
//                             builder: (context, state) =>
//                                 const TermsAndConditionsScreen(),
//                           ),
//                           GoRoute(
//                             parentNavigatorKey: _rootNavigatorKey,
//                             name: ProfilePages.deleteMyAccountScreen.name,
//                             path: ProfileRoutes.deleteMyAccountRoute,
//                             builder: (context, state) =>
//                                 const DeleteMyAccountScreen(),
//                           ),
//                         ]),
//                     GoRoute(
//                       parentNavigatorKey: _rootNavigatorKey,
//                       name: ProfilePages.notificationsSettingsScreen.name,
//                       path: ProfileRoutes.notificationsSettingsRoute,
//                       builder: (context, state) =>
//                           const NotificationsSettingsScreen(),
//                     ),
//                     GoRoute(
//                       parentNavigatorKey: _rootNavigatorKey,
//                       name: ProfilePages.aboutScreen.name,
//                       path: ProfileRoutes.aboutRoute,
//                       builder: (context, state) => const AboutScreen(),
//                     ),
//                     GoRoute(
//                         parentNavigatorKey: _rootNavigatorKey,
//                         name: ProfilePages.subSettingsScreen.name,
//                         path: ProfileRoutes.subSettingsScreenRoute,
//                         builder: (context, state) => const SubSettingsScreen(),
//                         routes: [
//                           GoRoute(
//                             parentNavigatorKey: _rootNavigatorKey,
//                             name: ProfilePages.settingLanguageScreen.name,
//                             path: ProfileRoutes.settingLanguageRoute,
//                             builder: (context, state) =>
//                                 const SettingLanguageScreen(),
//                           ),
//                           GoRoute(
//                             parentNavigatorKey: _rootNavigatorKey,
//                             name: ProfilePages.editAddressScreen.name,
//                             path: ProfileRoutes.editAddressRoute,
//                             builder: (context, state) =>
//                                 const EditAddressScreen(),
//                           ),
//                         ]),
//                   ]),
//             ],
//           ),
//         ],
//       ),
//       // account details
//       GoRoute(
//         parentNavigatorKey: _rootNavigatorKey,
//         name: ProfilePages.accountDeletedScreen.name,
//         path: ProfileRoutes.accountDeletedRoute,
//         builder: (context, state) => const AccountDeletedScreen(),
//       ),
//       // GoRoute(
//       //   parentNavigatorKey: _rootNavigatorKey,
//       //   name: StoryPages.story.name,
//       //   path: MainRoutes.story,
//       //   builder: (context, state) {
//       //     // key: state.pageKey,
//       //     List<StoriesDataEntity> storyData =
//       //         state.extra as List<StoriesDataEntity>;
//       //     int givenPageIndex = state.extra as int;
//       //     return MoreStories(
//       //       storyData: storyData,
//       //       givenPageIndex: givenPageIndex,
//       //     );
//       //   },
//       //   //       pageBuilder: (context, state) =>
//       //   // MaterialPage<void>(
//       //   //
//       //   //
//       //   //         child: MoreStories(),
//       //   //       ),
//       // ),
//       // recentMatches
//       GoRoute(
//         parentNavigatorKey: _shellNavigatorKey,
//         name: FanAreaPages.recentMatches.name,
//         builder: (BuildContext context, GoRouterState state) {
//           final clubID = state.queryParameters['clubID'] ?? '';
//           return RecentMatchesScreen(
//             clubID: clubID,
//           );
//         },
//         path: FanAreaRoutes.recentMatches,
//       ),
//       // On boarding
//       GoRoute(
//         name: InitialPages.onBoarding.name,
//         path: MainRoutes.onBoarding,
//         pageBuilder: (context, state) => MaterialPage<void>(
//           key: state.pageKey,
//           child: const OnBoardingScreen(),
//         ),
//       ),
//       // update now
//       GoRoute(
//         name: AppConfigPages.updateNowScreen.name,
//         path: AppConfigRoutes.updateNowScreen,
//         pageBuilder: (context, state) => MaterialPage<void>(
//           key: state.pageKey,
//           child: const UpdateNowScreen(),
//         ),
//       ),
//
//       // regestration
//       GoRoute(
//           name: RegistrationPages.registration.name,
//           path: RegistrationRoutes.registration,
//           pageBuilder: (context, state) => MaterialPage<void>(
//               key: state.pageKey, child: const RegistrationScreen()),
//           routes: [
//             // verify phone
//             GoRoute(
//                 name: RegistrationPages.verifyPhone.name,
//                 path: RegistrationRoutes.verifyPhone,
//                 pageBuilder: (context, state) => NoTransitionPage(
//                       arguments: [
//                         state.queryParameters['phoneNumber'],
//                       ],
//                       child: VerifyPhoneScreen(
//                         phoneNumber: state.queryParameters['phoneNumber'] ?? '',
//                       ),
//                     ),
//                 routes: <RouteBase>[
//                   GoRoute(
//                       name: RegistrationPages.completeProfile.name,
//                       path: RegistrationRoutes.completeProfile,
//                       pageBuilder: (context, state) => MaterialPage<void>(
//                             key: state.pageKey,
//                             child: const CompleteProfileScreen(),
//                           ),
//                       routes: [
//                         GoRoute(
//                             name: RegistrationPages.addNewAddressScreen.name,
//                             path: RegistrationRoutes.addNewAddressRoute,
//                             pageBuilder: (context, state) => MaterialPage<void>(
//                                   key: state.pageKey,
//                                   child: const AddNewAddress(),
//                                 ),
//                             routes: [
//                               GoRoute(
//                                 name: RegistrationPages.favourite.name,
//                                 path:
//                                     RegistrationRoutes.favouriteTeamScreenName,
//                                 pageBuilder: (context, state) =>
//                                     MaterialPage<void>(
//                                   key: state.pageKey,
//                                   child: const FavoriteHockeyTeamScreen(),
//                                 ),
//                               ),
//                             ]),
//                       ]),
//                 ]),
//           ]),
//
//       // Splash
//       GoRoute(
//         name: InitialPages.splash.name,
//         path: MainRoutes.splash,
//         pageBuilder: (context, state) => MaterialPage<void>(
//           key: state.pageKey,
//           child: const SplashAnimation(),
//         ),
//       ),
//       // Notifications
//       GoRoute(
//         parentNavigatorKey: _rootNavigatorKey,
//         name: NotificationsPages.notifications.name,
//         path: MainRoutes.notificationsScreenName,
//         pageBuilder: (context, state) => MaterialPage<void>(
//           key: state.pageKey,
//           child: const NotificationsScreen(),
//         ),
//       ),
//     ],
//     observers: [SentryNavigatorObserver()],
//
//     errorPageBuilder: (context, state) => MaterialPage<void>(
//       key: state.pageKey,
//       child: MainRoutes.errorWidget(context, state),
//     ),
//   );
// }
