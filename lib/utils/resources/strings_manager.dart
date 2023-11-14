// import "package:flutter/material.dart";
/// class for all string values in the app (localized)
// class AppStrings {
//   static String noRouteFound(BuildContext context) => "No Route Found";
//
//   /// secure storage saved keys
//   static const String hadViewedOnBoarding = "hadViewedOnBoarding";
//   static const String keyThemeData = 'theme_data';
//   static const String userData = 'user_data';
//   static const String notificationSettings = 'notification_settings';
//   static const String keyIsFirstLoaded = 'is_first_loaded';
//
//   /// error messages
//
//   static String retry(BuildContext context) => "Retry?".tr(context);
// //
//   /// OnBoardingScreen
//   static String onBoardingTitle1(BuildContext context) =>
//       "onboarding1.title".tr(context);
//   static String onBoardingTitle2(BuildContext context) =>
//       "onboarding2.title".tr(context);
//   static String onBoardingTitle3(BuildContext context) =>
//       "onboarding3.title".tr(context);
//   static String onBoardingSubTitle1(BuildContext context) =>
//       "onboarding1.description".tr(context);
//   static String onBoardingSubTitle2(BuildContext context) =>
//       "onboarding2.description".tr(context);
//   static String onBoardingSubTitle3(BuildContext context) =>
//       "onboarding3.description".tr(context);
//   static String register(BuildContext context) => "button.register".tr(context);
//   static String btnContinue(BuildContext context) =>
//       "button.continue".tr(context);
//   static String agree(BuildContext context) =>
//       "subscription.footer".tr(context);
//   static String subscribe(BuildContext context, String price) =>
//       "subscription.subscribe".tr(context).replaceAll('100', price);
//   static String terms(BuildContext context) => "privacy.option2".tr(context);
//   static String and(BuildContext context) => "subscription.and".tr(context);
//   static String youSubscribedSuccessfully(BuildContext context) =>
//       "subscription.youSubscribedSuccessfully".tr(context);
//   static String backToFanArea(BuildContext context) =>
//       "subscription.backToFanArea".tr(context);
//   static String privacyPolicy(BuildContext context) =>
//       "privacy.option1".tr(context);
//
//   /// app_config
//   static String updateAvailable(BuildContext context) =>
//       "appConfig.updateAvailable".tr(context);
//   static String updateAvailableDescription(BuildContext context) =>
//       "appConfig.updateAvailableDescription".tr(context);
//   static String updateNow(BuildContext context) =>
//       "appConfig.updateNow".tr(context);
//
//   /// Notifications
//   static String notifications(BuildContext context) =>
//       "profileSettings.option4".tr(context);
//   static String unread(BuildContext context) =>
//       "notifications.unread".tr(context);
//   static String markUnread(BuildContext context) =>
//       "notifications.markAll".tr(context);
//
//   ///RegistrationScreen
//   static String title(BuildContext context) =>
//       "registration.enterTitle".tr(context);
//   static String subTitle(BuildContext context) =>
//       "registration.enterDescription".tr(context);
//   static String enterPhoneNumber(BuildContext context) =>
//       "registration.title".tr(context);
//
//   ///verifyScreen
//   static String verifyPhone(BuildContext context) =>
//       "registration.verifyTitle".tr(context);
//   static String verifyResend(BuildContext context) =>
//       "registration.verifyResend".tr(context);
//   static String verifyResendTime(String time, BuildContext context) {
//     return "registration.verifyResendTime".tr(context).replaceAll('30', time);
//   }
//
//   static String subtitle(BuildContext context) =>
//       "registration.verifyHeader".tr(context);
//   static String verifyResendOTP(BuildContext context) =>
//       "registration.verifyResendOTP".tr(context);
//   static String verifyResendAgain(BuildContext context) =>
//       "registration.verifyResendAgain".tr(context);
//   static String sentTo(BuildContext context) =>
//       "registration.verifySentTo".tr(context);
//
//   ///completeProfile
//   static String titleCompleteProfile(BuildContext context) =>
//       "registration.completeTitle".tr(context);
//   static String addYourAddress(BuildContext context) =>
//       "registration.completeAddressTitle".tr(context);
//
//   static String subtitleCompleteProfile(BuildContext context) =>
//       "registration.completeAddressDescription".tr(context);
//   static String lableFname(BuildContext context) =>
//       "registration.completeFirstname".tr(context);
//   static String lableLname(BuildContext context) =>
//       "registration.completeLastname".tr(context);
//   static String btnName(BuildContext context) =>
//       "registration.favoriteTeamButton".tr(context);
//   static String gender(BuildContext context) =>
//       "registration.completeGender".tr(context);
//   static String pleaseEnterYourFirstName(BuildContext context) =>
//       "registration.pleaseEnterYourFirstName".tr(context);
//   static String pleaseEnterYourLastName(BuildContext context) =>
//       "registration.pleaseEnterYourLastName".tr(context);
//   static String pleaseEnterYourEmail(BuildContext context) =>
//       "registration.pleaseEnterYourEmail".tr(context);
//   static String selectYourGender(BuildContext context) =>
//       "registration.selectYourGender".tr(context);
//   static String pleaseSelectYourGender(BuildContext context) =>
//       "registration.pleaseSelectYourGender".tr(context);
//   static String pleaseEnterYourBirthDate(BuildContext context) =>
//       "registration.pleaseEnterYourBirthDate".tr(context);
//   static String completeAddressCountry(BuildContext context) =>
//       "registration.completeAddressCountry".tr(context);
//   static String completeAddressCity(BuildContext context) =>
//       "registration.completeAddressCity".tr(context);
//   static String completeAddressAddress(BuildContext context) =>
//       "registration.completeAddressAddress".tr(context);
//   static String completeAddressPostcode(BuildContext context) =>
//       "registration.completeAddressPostcode".tr(context);
//   static String pleaseEnterYourCountry(BuildContext context) =>
//       "registration.pleaseEnterYourCountry".tr(context);
//   static String pleaseEnterYourCity(BuildContext context) =>
//       "registration.pleaseEnterYourCity".tr(context);
//   static String pleaseEnterYourAddress(BuildContext context) =>
//       "registration.pleaseEnterYourAddress".tr(context);
//   static String pleaseEnterYourPostcode(BuildContext context) =>
//       "registration.pleaseEnterYourPostcode".tr(context);
//   static String agreeToProceed(BuildContext context) =>
//       "registration.agreeToProceed".tr(context);
//   static String willBeAvailableSoon(BuildContext context) =>
//       "registration.willBeAvailableSoon".tr(context);
//
//   /// Favorite Hockey Team
//   static String favoriteHockeyTeam(BuildContext context) =>
//       "registration.favoriteTeamTitle".tr(context);
//   static String chooseYourFavoriteTeam(BuildContext context) =>
//       "registration.favoriteTeamDescription".tr(context);
//
//   /// Fan Area
//   static String readLess(BuildContext context) => "button.seeLess".tr(context);
//   static String readMore(BuildContext context) => "button.readMore".tr(context);
//   static String upcomingMatches(BuildContext context) =>
//       "fanArea.upcomingMatches".tr(context);
//   static String votingFeedbackEnding(BuildContext context) =>
//       "fanArea.votingFeedbackEnding".tr(context);
//   static String betYourClub(BuildContext context) =>
//       "highlight.title".tr(context);
//   static String enterYourBet(BuildContext context) =>
//       "predict.description".tr(context);
//   static String seeAllMatches(BuildContext context) =>
//       "predict.recentMatches".tr(context);
//
//   static String gameStats(BuildContext context) =>
//       "game_stats.navTitle".tr(context);
//   static String nationalLeague(BuildContext context) =>
//       "game_stats.subtitle".tr(context);
//   static String predict(BuildContext context) =>
//       "button.predict".tr(context).toUpperCase();
//   static String prediction(BuildContext context) =>
//       "games.prediction".tr(context);
//   static String attendanceTitle(BuildContext context) =>
//       "games.attendanceTitle".tr(context);
//   static String attendanceDescription(BuildContext context) =>
//       "games.attendanceDescription".tr(context);
//   static String attendanceDescriptionTwo(BuildContext context) =>
//       "games.attendanceDescriptionTwo".tr(context);
//   static String attendanceAttendanceSettings(BuildContext context) =>
//       "games.attendanceAttendanceSettings".tr(context);
//   static String attendanceAttendanceSettingsButton1(BuildContext context) =>
//       "games.attendanceAttendanceSettingsButton1".tr(context);
//   static String attendanceAttendanceSettingsButton2(BuildContext context) =>
//       "games.attendanceAttendanceSettingsButton2".tr(context);
//   static String attendanceAttendanceDisapproved(BuildContext context) =>
//       "games.attendanceAttendanceDisapproved".tr(context);
//   static String attendanceAttendanceDisapprovedButton1(BuildContext context) =>
//       "games.attendanceAttendanceDisapprovedButton1".tr(context);
//   static String attendanceAttendanceDisapprovedButton2(BuildContext context) =>
//       "games.attendanceAttendanceDisapprovedButton2".tr(context);
//   static String giveFeedback(BuildContext context) =>
//       "games.giveFeedback".tr(context);
//   static String giveFeedbackPlaceholder(BuildContext context) =>
//       "games.giveFeedbackPlaceholder".tr(context);
//   static String of(BuildContext context) => "games.of".tr(context);
//   static String feedback(BuildContext context) => "games.feedback".tr(context);
//   static String feedBackHeader(BuildContext context) =>
//       "games.feedBackHeader".tr(context);
//   static String feedBackSubHeader(BuildContext context) =>
//       "games.feedBackSubHeader".tr(context);
//   static String leaveYourFeedback(BuildContext context) =>
//       "games.leaveYourFeedback".tr(context);
//
//   static String attendanceAttendanceApproved(
//       BuildContext context, String points) {
//     return "games.attendanceAttendanceApproved"
//         .tr(context)
//         .replaceAll('X', points);
//   }
//
//   static String attendanceAttendanceApprovedButton(BuildContext context) =>
//       "games.attendanceAttendanceApprovedButton".tr(context);
//   static String locationAccessDenied(BuildContext context) =>
//       "games.locationAccessDenied".tr(context);
//   static String pleaseGrantAccessToYourDeviceLocationToUseThisFeature(
//           BuildContext context) =>
//       "games.pleaseGrantAccessToYourDeviceLocationToUseThisFeature".tr(context);
//   static String exploreNews(BuildContext context) =>
//       "fanArea.exploreNews".tr(context);
//   static String seeAll(BuildContext context) => "button.seeAll".tr(context);
//   static String sponsored(BuildContext context) =>
//       "fanArea.sponsored".tr(context);
//   static String recentMatches(BuildContext context) =>
//       "fanArea.recentMatches".tr(context);
//   static String news(BuildContext context) => "button.news".tr(context);
//   static String votingFeedback(BuildContext context) =>
//       "fanArea.votingFeedback".tr(context);
//   static String vote(BuildContext context) =>
//       "button.vote".tr(context).toUpperCase();
//   static String earnPointsByVote(BuildContext context) =>
//       "fanArea.votingFeedbackSubtitle".tr(context);
//   static String leaveFeedbackPlaceholder(BuildContext context) =>
//       "fanArea.leaveFeedbackPlaceholder".tr(context);  static String placeholder(BuildContext context) =>
//       "voting.leaveFeedbackPlaceholder".tr(context);
//   static String leaveFeedBack(BuildContext context) =>
//       "voting.leaveFeedback".tr(context);
//   static String whatOpinion(BuildContext context) =>
//       "voting.opinion".tr(context);
//   static String upcomingEvents(BuildContext context) =>
//       "upcomingEvents.mainNavTitle".tr(context);
//   static String event(BuildContext context) =>
//       "upcomingEvents.title".tr(context);
//   static String points(BuildContext context) =>
//       "leaderboard.points".tr(context);
//   static String promoCode(BuildContext context) =>
//       "leaderboard.promoCode".tr(context);
//   static String leaderBoard(BuildContext context) =>
//       "leaderboard.title".tr(context);
//   static String earnPoints(BuildContext context) =>
//       "leaderboard.earnPoints".tr(context);
//   static String season(BuildContext context) =>
//       "leaderboard.season".tr(context);
//   static String unlockMoreRewards(BuildContext context) =>
//       "fanArea.subscriptionTitle".tr(context);
//   static String unLock(BuildContext context) =>
//       "fanArea.subscriptionButton".tr(context);
//   static String superFan(BuildContext context) =>
//       "subscription.button2".tr(context);
//   static String chat(BuildContext context) =>
//       "subscription.button1Feature1".tr(context);
//   static String voting(BuildContext context) =>
//       "fanArea.subscription_option2".tr(context);
//   static String extraPoints(BuildContext context) =>
//       "fanArea.subscription_option3".tr(context);
//   static String subscription(BuildContext context) =>
//       "subscription.navTitle".tr(context);
//   static String supportYourTeam(BuildContext context) =>
//       "subscription.button2Description".tr(context);
//   static String votingAndFeedback(BuildContext context) =>
//       "subscription.button2Feature1".tr(context);
//   static String makeDecisions(BuildContext context) =>
//       "subscription.button2Feature1Description".tr(context);
//   static String revenueShare(BuildContext context) =>
//       "subscription.button2Feature2".tr(context);
//   static String partIsSharedWithTheClub(BuildContext context) =>
//       "subscription.button2Feature2Description".tr(context);
//   static String oneAndHalfMorePointsForActivities(BuildContext context) =>
//       "subscription.button2Feature3Description".tr(context);
//
//   /// Games
//   static String games(BuildContext context) => "button.games".tr(context);
//   static String watchLiveStream(BuildContext context) =>
//       "button.watchLiveStream".tr(context);
//   static String ranking(BuildContext context) => "games.ranking".tr(context);
//   static String teams(BuildContext context) => "games.rankingTeam".tr(context);
//   static String detectMyLocation(BuildContext context) =>
//       "games.detectMyLocation".tr(context);
//   static String currentMatches(BuildContext context) =>
//       "games.currentMatches".tr(context);
//   static String atTheArena(BuildContext context) =>
//       "button.attendance".tr(context);
//   static String proveMyAttendance(BuildContext context) =>
//       "button.proveYourAttendance".tr(context);
//
//   /// shop
//   static String swissFanShop(BuildContext context) =>
//       "shop.swissFanShop".tr(context);
//   static String noMatchOnThisDate(BuildContext context) =>
//       "shop.noMatchOnThisDate".tr(context);
//   static String purchasePoints(BuildContext context) =>
//       "shop.pointsButton".tr(context);
//   static String takeALook(BuildContext context) => "shop.takeALook".tr(context);
//   static String expiresAt(BuildContext context) => "shop.expiresAt".tr(context);
//   static String redeem(BuildContext context, String points) {
//     return "shop.productPageRedeem".tr(context).replaceAll("450", points);
//   }
//
//   static String confirmYourPurchase(BuildContext context) =>
//       "shop.confirmYourPurchase".tr(context);
//   static String purchaseAfterText(BuildContext context) =>
//       "shop.purchaseAfterText".tr(context);
//   static String clickHereToView(BuildContext context) =>
//       "shop.clickHereToView".tr(context);
//   static String confirmDescription(BuildContext context, String productName) {
//     return "shop.confirmDescription"
//         .tr(context)
//         .replaceAll("ProductName", productName);
//   }
//
//   static String purchasePointsTitle(BuildContext context) =>
//       "purchasePoints.title".tr(context);
//   static String purchasePointsBuyNow(BuildContext context) =>
//       "purchasePoints.buyNow".tr(context);
//   static String purchasePointsDescription(BuildContext context) =>
//       "purchasePoints.description".tr(context);
//   static String purchasePointsDisclaimer(BuildContext context) =>
//       "purchasePoints.disclaimer".tr(context);
//   static String purchasePointsPoints(BuildContext context) =>
//       "purchasePoints.points".tr(context);
//
//   /// Profile
//   static String profile(BuildContext context) => "button.profile".tr(context);
//   static String availableFanTokens(BuildContext context) =>
//       "purchaseHistory.availableUntil".tr(context);
//   static String superFanPlus(BuildContext context) =>
//       "purchaseHistory.subscriptionType".tr(context);
//   static String price(BuildContext context) =>
//       "purchaseHistory.price".tr(context);
//   static String pointsExpireOn(BuildContext context) =>
//       "purchaseHistory.pointsExpireOn".tr(context);
//   static String available(BuildContext context) =>
//       "purchaseHistory.available".tr(context);
//   static String expired(BuildContext context) =>
//       "purchaseHistory.expired".tr(context);
//
//   static String youAreASuperFan(BuildContext context) =>
//       "profile.youAreASuperFan".tr(context);
//   static String availablePoints(BuildContext context) =>
//       "profile.availablePoints".tr(context);
//   static String myTasks(BuildContext context) =>
//       "profile.tasksTitle".tr(context);
//   static String referAFriend(BuildContext context) =>
//       "profile.referTitle".tr(context);
//   static String inviteFriends(BuildContext context) =>
//       "profile.referSubtitle".tr(context);
//   static String youDontHaveAnyPoints(BuildContext context) =>
//       "profile.youDontHaveAnyPoints".tr(context);
//   static String youDontHaveAnyCodes(BuildContext context) =>
//       "profile.youDontHaveAnyCodes".tr(context);
//   static String noChangesMade(BuildContext context) =>
//       "profile.noChangesMade".tr(context);
//   static String myAddress(BuildContext context) =>
//       "profile.myAddress".tr(context);
//
//   static String invalidPhoneNumber(BuildContext context) =>
//       "registration.invalidPhoneNumber".tr(context);
//   static String buildNumberOfsRefersString(
//       int refersNumber, BuildContext context) {
//     return "${"profile.referDescription1".tr(context)} $refersNumber ${"profile.friendsSoFar".tr(context)}";
//   }
//
//   static String shareReferLink(BuildContext context) =>
//       "profile.referButton".tr(context);
//
//   /// my plan details
//
//   static String planDetails(BuildContext context) =>
//       "planDetails.navTitle".tr(context);
//   static String duration(BuildContext context) =>
//       "planDetails.title".tr(context);
//   static String timeLeft(BuildContext context) =>
//       "planDetails.timeLeft".tr(context);
//   static String durationTime(BuildContext context) =>
//       "planDetails.durationTime".tr(context);
//   static String from(BuildContext context) => "planDetails.from".tr(context);
//   static String to(BuildContext context) => "planDetails.to".tr(context);
//   static String pricePlan(BuildContext context) =>
//       "planDetails.pricePlan".tr(context);
//   static String pricePlanDuration(BuildContext context) =>
//       "planDetails.pricePlanDuration".tr(context);
//   static String pricePlanTotal(BuildContext context) =>
//       "planDetails.pricePlanTotal".tr(context);
//   static String changePlan(BuildContext context) =>
//       "planDetails.changePlan".tr(context);
//   static String cancelPlan(BuildContext context) =>
//       "planDetails.cancelPlan".tr(context);
//   static String popupTitle(BuildContext context) =>
//       "planDetails.popupTitle".tr(context);
//   static String popupDescription(BuildContext context) =>
//       "planDetails.popupDescription".tr(context);
//   static String popupButton1(BuildContext context) =>
//       "planDetails.popupButton1".tr(context);
//   static String popupButton2(BuildContext context) =>
//       "planDetails.popupButton2".tr(context);
//   static String noPlan(BuildContext context) =>
//       "planDetails.noPlan".tr(context);
//   static String chooseYourPlan(BuildContext context) =>
//       "planDetails.chooseYourPlan".tr(context);
//
//   /// Settings
//   static String settings(BuildContext context) =>
//       "profileSettings.title".tr(context);
//   static String myPlan(BuildContext context) =>
//       "profileSettings.option1".tr(context);
//   static String current(BuildContext context) => "myPlan.current".tr(context);
//   static String purchaseHistory(BuildContext context) =>
//       "purchaseHistory.title".tr(context);
//   static String purchase(BuildContext context) =>
//       "purchaseHistory.purchase".tr(context);
//   static String purchaseHistoryFor(BuildContext context) =>
//       "purchaseHistory.for".tr(context);
//   static String mySportsLiveStream(BuildContext context) =>
//       "button.watchLiveStream".tr(context);
//   static String helpCenter(BuildContext context) =>
//       "profileSettings.option2".tr(context);
//   static String privacy(BuildContext context) =>
//       "profileSettings.option3".tr(context);
//   static String about(BuildContext context) =>
//       "profileSettings.option6".tr(context);
//   static String logOut(BuildContext context) => "button.logout".tr(context);
//   static String version(BuildContext context) =>
//       "profileSettings.version".tr(context);
//
//   /// Edit profile
//   static String editProfile(BuildContext context) =>
//       "editProfile.title".tr(context);
//   static String email(BuildContext context) => "editProfile.email".tr(context);
//   static String phoneNumber(BuildContext context) =>
//       "editProfile.phone".tr(context);
//   static String birthdate(BuildContext context) =>
//       "editProfile.birthdate".tr(context);
//   static String male(BuildContext context) =>
//       "editProfile.gender_option1".tr(context);
//   static String female(BuildContext context) =>
//       "editProfile.gender_option2".tr(context);
//   static String other(BuildContext context) =>
//       "editProfile.gender_option3".tr(context);
//   static String hideMeFromTheLeaderBoard(BuildContext context) =>
//       "editProfile.hideMe".tr(context);
//   static String saveChanges(BuildContext context) =>
//       "editProfile.SaveChanges".tr(context);
//
//   /// Privacy (Settings)
//   static String yourName(BuildContext context) =>
//       "privacy.yourName".tr(context);
//   static String yourEmail(BuildContext context) =>
//       "privacy.yourEmail".tr(context);
//   static String yourPhoneNumber(BuildContext context) =>
//       "privacy.yourPhone".tr(context);
//   static String subject(BuildContext context) =>
//       "helpCenter.subject".tr(context);
//   static String leaveYourMessage(BuildContext context) =>
//       "helpCenter.leaveMessage".tr(context);
//   static String description(BuildContext context) =>
//       "helpCenter.leaveMessagePlaceholder".tr(context);
//   static String deleteMyAccount(BuildContext context) =>
//       "privacy.delete".tr(context);
//   static String deleteAccount(BuildContext context) =>
//       "deleteAccount.navTitle".tr(context);
//   static String submit(BuildContext context) => "helpCenter.submit".tr(context);
//
//   /// Delete my Account
//   static String bulletDot = "\u2022";
//   static String confirmDeletingAccountTitle(BuildContext context) =>
//       "deleteAccount.title".tr(context);
//   static String confirmDeletingAccountSubTitle1(BuildContext context) =>
//       "deleteAccount.description1".tr(context);
//   static String confirmDeletingAccountSubTitle2(BuildContext context) =>
//       "deleteAccount.description2".tr(context);
//   static String confirmDeletingAccountSubTitle3(BuildContext context) =>
//       "deleteAccount.description3".tr(context);
//   static String reasonForLeaving(BuildContext context) =>
//       "deleteAccount.reasonForLeaving".tr(context);
//   static String reasonForLeaving1(BuildContext context) =>
//       "deleteAccount.option1".tr(context);
//   static String reasonForLeaving2(BuildContext context) =>
//       "deleteAccount.option2".tr(context);
//   static String reasonForLeaving3(BuildContext context) =>
//       "deleteAccount.option3".tr(context);
//   static String reasonForLeaving4(BuildContext context) =>
//       "deleteAccount.option4".tr(context);
//   static String reasonForLeaving5(BuildContext context) =>
//       "deleteAccount.option5".tr(context);
//   static String reasonForLeaving6(BuildContext context) =>
//       "deleteAccount.option6".tr(context);
//   static String confirm(BuildContext context) => "button.confirm".tr(context);
//   static String skipForNow(BuildContext context) =>
//       "deleteAccount.skipForNow".tr(context);
//   static String weAreSad(BuildContext context) =>
//       "deleteAccount.header1".tr(context);
//   static String seYouGo(BuildContext context) =>
//       "deleteAccount.header2".tr(context);
//   static String deleteAccountRequestReceived(BuildContext context) =>
//       "deleteAccount.header3".tr(context);
//
//   /// Notifications Settings
//   static String newsText(BuildContext context) =>
//       "notificationSettings.option1".tr(context);
//   static String liveMatches(BuildContext context) =>
//       "notificationSettings.option2".tr(context);
//   static String liveActivity(BuildContext context) =>
//       "notificationSettings.option3".tr(context);
//   static String goalScored(BuildContext context) =>
//       "notificationSettings.option4".tr(context);
//   static String penalties(BuildContext context) =>
//       "notificationSettings.option5".tr(context);
//   static String roundOneDone(BuildContext context) =>
//       "notificationSettings.option6".tr(context);
//   static String gameStatsAvailable(BuildContext context) =>
//       "notificationSettings.option7".tr(context);
//   static String newOffers(BuildContext context) =>
//       "notificationSettings.option8".tr(context);
//   static String youCurrentlyHaveNoNotifications(BuildContext context) =>
//       "notificationSettings.youCurrentlyHaveNoNotifications".tr(context);
//
//   /// Log out
//   static String logOutSubText(BuildContext context) =>
//       "logout.description".tr(context);
//   static String cancel(BuildContext context) => "logout.button2".tr(context);
//
//   /// live activity
//   // "liveActivity": {
//   //     "startLiveActivity": "Live-Aktivität starten",
//   //     "liveActivityDescription": "Verfolgen Sie Live-Statistiken in Echtzeit auf Ihrem gesperrten Bildschirm",
//   //     "start": "Start"
//   //   }
//   static String startLiveActivity(BuildContext context) =>
//       "liveActivity.startLiveActivity".tr(context);
//   static String liveActivityDescription(BuildContext context) =>
//       "liveActivity.liveActivityDescription".tr(context);
//   static String start(BuildContext context) => "liveActivity.start".tr(context);
//
//   // Language
//   static String language(BuildContext context) =>
//       "mainSettings.language".tr(context);
//   static String enLanguage(BuildContext context) =>
//       "languages.english".tr(context);
//   static String enLanguageCode(BuildContext context) => "en";
//   static String itLanguage(BuildContext context) =>
//       "languages.italian".tr(context);
//   static String itLanguageCode(BuildContext context) => "it";
//   static String deLanguage(BuildContext context) =>
//       "languages.deutsch".tr(context);
//   static String deLanguageCode(BuildContext context) => "de";
//   static String frLanguage(BuildContext context) =>
//       "languages.french".tr(context);
//   static String frLanguageCode(BuildContext context) => "fr";
// }
