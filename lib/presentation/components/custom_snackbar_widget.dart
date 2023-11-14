// import 'package:demop/utils/resources/color_manger.dart';
// import 'package:demop/utils/resources/font_manager.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
/// custom snack bar widget for showing snack bar in app (error state)
// SnackBar? snackBar;
// void customSnackBar(
//     {required String content,
//     required Color color,
//     required Duration duration,
//     required SnackBarAction snackBarAction,
//     required BuildContext context}) {
//   snackBar = SnackBar(
//     content: Text(
//       content,
//       style: getSemiBoldStyle(
//         color: ColorManager.white,
//         fontSize: FontSize.s15.sp,
//       ),
//       textAlign: TextAlign.start,
//     ),
//     backgroundColor: color,
//     duration: duration,
//     action: snackBarAction,
//   );
//   ScaffoldMessenger.of(context).showSnackBar(snackBar!);
// }
//
// SnackBar? floatingSnackBar;
// void customFloatingSnackBar({
//   required String content,
//   required Duration duration,
//   required BuildContext context,
//   Widget? contentWidget,
//   Color? snackBarColor,
//   EdgeInsetsGeometry? snackBarMargin,
// }) {
//   floatingSnackBar = SnackBar(
//     // margin: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
//     margin: snackBarMargin ??
//         EdgeInsets.symmetric(horizontal: 14.w, vertical: 34.h),
//     content: contentWidget ??
//         Text(
//           content,
//           style: getSemiBoldStyle(
//             color: ColorManager.white,
//             fontSize: FontSize.s14.sp,
//           ),
//         ),
//     behavior: SnackBarBehavior.floating,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(8.r),
//     ),
//     backgroundColor: snackBarColor ?? ColorManager.primarySwiss,
//     elevation: 10,
//     duration: duration,
//   );
//   ScaffoldMessenger.of(context).showSnackBar(floatingSnackBar!);
// }
