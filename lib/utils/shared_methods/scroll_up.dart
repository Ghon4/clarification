// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
/// class for ScrollToTopButton widget
// class ScrollToTopButton extends StatefulWidget {
//   final ScrollController scrollController;
//
//   const ScrollToTopButton({super.key, required this.scrollController});
//
//   @override
//   State<ScrollToTopButton> createState() => _ScrollToTopButtonState();
// }
//
// class _ScrollToTopButtonState extends State<ScrollToTopButton> {
//   bool _showButton = false;
//
//   @override
//   void initState() {
//     widget.scrollController.addListener(_scrollListener);
//     super.initState();
//   }
//
//   void _scrollListener() {
//     final offset = widget.scrollController.offset;
//     if (offset >= 400 && widget.scrollController.position.userScrollDirection == ScrollDirection.forward) {
//       if (!_showButton) {
//         setState(() {
//           _showButton = true;
//         });
//       }
//     } else {
//       if (_showButton) {
//         setState(() {
//           _showButton = false;
//         });
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return _showButton
//         ? Padding(
//       padding: EdgeInsets.only(bottom: 130.0.h),
//       child: ClipOval(
//         child: Container(
//           height: 35.h,
//           width: 35.w,
//           color: Colors.white,
//           child: FloatingActionButton(
//             onPressed: () {
//               widget.scrollController.animateTo(0.0,
//                   duration: const Duration(milliseconds: 500),
//                   curve: Curves.ease);
//             },
//             backgroundColor: Colors.white,
//             child: Icon(
//               Icons.keyboard_arrow_up,
//               size: 35.w,
//               color:  ColorManager.primaryDarkHCAP,
//             ),
//           ),
//         ),
//       ),
//     )
//         : const SizedBox.shrink();
//   }
// }
