// import 'dart:convert';
/// class for theme manager to save and load theme data (on the flow from the server side)
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class ThemeManager {
//   static ThemeData fallbackTheme = _buildFallbackTheme();
//   static ThemeData currentTheme = fallbackTheme;
//
//   // for saving and changing user theme
//   static Future<void> setThemeData(ThemeData themeData) async {
//     currentTheme = themeData;
//     await saveThemeToLocalDB(themeData);
//   }
//
//   // loading saved theme data
//   static Future<void> loadThemeFromLocalDB() async {
//     final String? themeDataJson =
//         await SecureStorage.instance.read(AppStrings.keyThemeData);
//
//     if (themeDataJson != null) {
//       final themeData = _deserializeThemeData(themeDataJson);
//       currentTheme = _buildTheme(themeData);
//     } else {
//       // If no theme is saved, use the fallback theme
//       currentTheme = fallbackTheme;
//     }
//   }
//
//   // saving theme data
//   static Future<void> saveThemeToLocalDB(ThemeData themeData) async {
//     final themeDataJson = _serializeThemeData(themeData);
//     SecureStorage.instance.write(AppStrings.keyThemeData, themeDataJson);
//   }
//
//   static ThemeData _deserializeThemeData(String json) {
//     final data = jsonDecode(json);
//     return ThemeData(
//       primaryColor: Color(data['primaryColor']),
//       // Add other properties as needed
//     );
//   }
//
//   static String _serializeThemeData(ThemeData themeData) {
//     final data = {
//       'primaryColor': themeData.primaryColor.value,
//       // Add other properties as needed
//     };
//     return jsonEncode(data);
//   }
//
//   static ThemeData _buildTheme(ThemeData themeData) {
//     final primarySwatch = themeData.primaryColor.toMaterialColor();
//
//     return ThemeData(
//       useMaterial3: true,
//       primaryColor: themeData.primaryColor,
//       primarySwatch: primarySwatch,
//       scaffoldBackgroundColor: themeData.primaryColor,
//       appBarTheme: AppBarTheme(
//         color: primarySwatch,
//         titleSpacing: themeData.appBarTheme.titleSpacing,
//         // systemOverlayStyle: const SystemUiOverlayStyle(
//         //   statusBarBrightness: Brightness.light,
//         //   statusBarColor: Colors.transparent,
//         //   statusBarIconBrightness: Brightness.light,
//         // ),
//         systemOverlayStyle: SystemUiOverlayStyle.light,
//         backgroundColor: themeData.appBarTheme.backgroundColor,
//         elevation: 0.0,
//         titleTextStyle: getSemiBoldStyle(color: ColorManager.white),
//         iconTheme: IconThemeData(
//           color: ColorManager.white,
//         ),
//         centerTitle: true,
//       ),
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         backgroundColor: themeData.bottomNavigationBarTheme.backgroundColor,
//         selectedItemColor:
//             themeData.bottomNavigationBarTheme.selectedItemColor ??
//                 ColorManager.white,
//         unselectedItemColor:
//             themeData.bottomNavigationBarTheme.unselectedItemColor ??
//                 ColorManager.black35,
//         selectedLabelStyle: getRegularPoppinsStyle(
//           fontSize:
//               themeData.bottomNavigationBarTheme.selectedLabelStyle?.fontSize ??
//                   FontSize.s11.sp,
//           color: themeData.bottomNavigationBarTheme.selectedLabelStyle?.color ??
//               ColorManager.white,
//         ),
//         unselectedLabelStyle: getRegularPoppinsStyle(
//           fontSize:
//               themeData.bottomNavigationBarTheme.selectedLabelStyle?.fontSize ??
//                   FontSize.s11.sp,
//           color: themeData.bottomNavigationBarTheme.selectedLabelStyle?.color ??
//               ColorManager.white,
//         ),
//       ),
//       // Define other theme properties as needed
//     );
//   }
//
//   static ThemeData _buildFallbackTheme() {
//     return ThemeData(
//       useMaterial3: true,
//       primaryColor: ColorManager.primaryDarkSwiss,
//       primarySwatch: ColorManager.primarySwiss.toMaterialColor(),
//       scaffoldBackgroundColor: ColorManager.white,
//       appBarTheme: AppBarTheme(
//         titleSpacing: 20.0.sp,
//         // systemOverlayStyle: const SystemUiOverlayStyle(
//         //   statusBarBrightness: Brightness.light,
//         //   statusBarColor: Colors.transparent,
//         //   statusBarIconBrightness: Brightness.light,
//         // ),
//         systemOverlayStyle: SystemUiOverlayStyle.light,
//         backgroundColor: ColorManager.primaryDarkSwiss,
//         elevation: 0.0,
//         titleTextStyle: getSemiBoldStyle(color: ColorManager.white),
//         iconTheme: IconThemeData(
//           color: ColorManager.white,
//         ),
//         centerTitle: true,
//       ),
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         backgroundColor: ColorManager.primaryDarkSwiss,
//         selectedItemColor: ColorManager.yellow,
//         unselectedItemColor: ColorManager.black35,
//         elevation: 0,
//         selectedLabelStyle: getRegularPoppinsStyle(
//             color: ColorManager.yellow, fontSize: FontSize.s11.sp),
//         unselectedLabelStyle: getRegularPoppinsStyle(
//             color: ColorManager.black35, fontSize: FontSize.s11.sp),
//       ),
//
//       // Define other theme properties as needed
//     );
//   }
// }
