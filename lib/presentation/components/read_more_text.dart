// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
/// class for ReadMoreTextWidget to show read more and read less text
// class ReadMoreTextWidget extends StatefulWidget {
//   final String text;
//   final int maxLength;
//   final TextStyle? textStyle;
//
//   const ReadMoreTextWidget({
//     super.key,
//     required this.text,
//     required this.maxLength,
//     this.textStyle,
//   });
//
//   @override
//   _ReadMoreTextWidgetState createState() => _ReadMoreTextWidgetState();
// }
//
// class _ReadMoreTextWidgetState extends State<ReadMoreTextWidget> {
//   bool isExpanded = false;
//
//   @override
//   Widget build(BuildContext context) {
//     String readMoreText = AppStrings.readMore(context);
//     String readLessText = AppStrings.readLess(context);
//
//     final String displayText = isExpanded
//         ? '${widget.text} '
//         : (widget.text.length > widget.maxLength
//             ? '${widget.text.substring(0, widget.maxLength)}... '
//             : widget.text);
//
//     final TextStyle readMoreTextStyle =
//         getSemiBoldStyle(color: ColorManager.yellow, fontSize: FontSize.s14.sp);
//
//     return GestureDetector(
//       onTap: () {
//         if (widget.text.length > widget.maxLength) {
//           setState(() {
//             isExpanded = !isExpanded;
//           });
//         }
//       },
//       child: Text.rich(
//         textAlign: TextAlign.start,
//         TextSpan(
//           text: displayText,
//           style: widget.textStyle ??
//               getMediumStyle(
//                   color: ColorManager.white, fontSize: FontSize.s16.sp),
//           children: [
//             if (isExpanded)
//               TextSpan(
//                 text: readLessText,
//                 style: readMoreTextStyle,
//               ),
//             if (!isExpanded && widget.text.length > widget.maxLength)
//               TextSpan(
//                 text: readMoreText,
//                 style: readMoreTextStyle,
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
