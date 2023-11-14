// import 'package:demop/utils/resources/color_manger.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class PDFViewer extends StatelessWidget {
//   const PDFViewer({Key? key, required this.pdfURL, required this.title})
//       : super(key: key);
//
//   final String pdfURL;
//   final String title;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         bottom: PreferredSize(
//             preferredSize: const Size.fromHeight(4.0),
//             child: Container(
//               color: ColorManager.gray_03Swiss,
//               height: .5.r,
//             )),
//         title: Text(title),
//         backgroundColor: ColorManager.primaryDarkHCAP,
//       ),
//       body: Scaffold(
//         body: Center(
//           child: const PDF().fromUrl(
//             pdfURL,
//             placeholder: (double progress) => Center(
//                 child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 const CircularProgressIndicator.adaptive(),
//                 15.w.pw,
//                 Text(
//                   '${progress.toInt()}%',
//                   style: getBoldStyle(color: ColorManager.white),
//                 ),
//               ],
//             )),
//             errorWidget: (dynamic error) => Center(
//                 child: Text(
//               error.toString(),
//               style: getBoldStyle(color: ColorManager.white),
//             )),
//           ),
//         ),
//       ),
//     );
//   }
// }
