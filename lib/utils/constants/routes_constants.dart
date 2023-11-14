import 'package:flutter/material.dart';

class MainRoutes {
  static const root = '/';
  static const splash = '/splash';
  static const onBoarding = '/onBoarding';
  static const notificationsScreenName = '/notifications';

  // static Widget errorWidget(BuildContext context, GoRouterState state) =>
  //     NotFoundScreen(
  //       error: state.error,
  //     );
}

class AppConfigRoutes {
  static const updateNowScreen = '/updateNowScreen';
}

class RegistrationRoutes {
  static const registration = '/registration';
  static const verifyPhone = 'verifyPhone';
  static const completeProfile = 'completeProfile';
  static const addNewAddressRoute = 'addNewAddressScreen';
  static const favouriteTeamScreenName = 'favourite';
}

class GamesRoutes {
  static const leagueRankingRoute = 'leagueRankingScreen';
  static const proveAttendanceRoute = 'proveAttendanceScreen';
  static const submitFeedBackRoute = 'submitFeedBackScreen';
}

class ShopRoutes {
  static const shopProductRoute = 'shopProductScreen';
  static const shopSeeAllProductRoute = 'shopSeeAllProductScreen';
  static const shopPurchasePointsRoute = 'shopPurchasePointsScreen';
}

class ProfileRoutes {
  // static const settingsRoute = 'settingsScreen';
}
