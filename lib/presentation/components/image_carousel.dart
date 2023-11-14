// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
/// class for ImageCarousel widget for showing image carousel in app
// class ImageCarousel extends StatefulWidget {
//   final List<String> images;
//
//   const ImageCarousel({super.key, required this.images});
//
//   @override
//   _ImageCarouselState createState() => _ImageCarouselState();
// }
//
// class _ImageCarouselState extends State<ImageCarousel> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: Stack(
//             alignment: Alignment.bottomCenter,
//             children: [
//               PageView.builder(
//                 controller: _pageController,
//                 itemCount: widget.images.length,
//                 onPageChanged: (int index) {
//                   setState(() {
//                     _currentPage = index;
//                   });
//                 },
//                 itemBuilder: (context, index) {
//                   return CustomCachedNetworkImage(
//                     imageUrl: widget.images[index],
//                     fit: BoxFit.cover,
//                     width: context.screenWidth,
//                     height: context.screenHeight,
//                     borderRadius: BorderRadius.circular(AppRadius.r8.r),
//                   );
//                 },
//               ),
//               Positioned(
//                 bottom: AppSize.s10.h,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     for (int i = 0; i < widget.images.length; i++)
//                       Padding(
//                         padding: EdgeInsets.all(AppPadding.p4.r),
//                         child: Container(
//                           width: 8.0,
//                           height: 8.0,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: _currentPage == i
//                                 ? ColorManager.white
//                                 : Colors.grey,
//                           ),
//                         ),
//                       ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
