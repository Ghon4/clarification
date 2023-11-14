// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_svg/flutter_svg.dart';
/// class for custom cached network image using CachedNetworkImage package (https://pub.dev/packages/cached_network_image)
// class CustomCachedNetworkImage extends StatelessWidget {
//   final String imageUrl;
//   final BoxFit fit;
//   final double width;
//   final double height;
//   final BorderRadius borderRadius;
//
//   const CustomCachedNetworkImage({
//     Key? key,
//     required this.imageUrl,
//     this.fit = BoxFit.fill,
//     required this.width,
//     required this.height,
//     this.borderRadius = BorderRadius.zero,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: borderRadius,
//       child: CachedNetworkImage(
//         imageUrl: imageUrl,
//         fit: fit,
//         width: width,
//         height: height,
//         placeholder: (context, url) => const CupertinoActivityIndicator(),
//         errorWidget: (context, url, error) =>
//             SvgPicture.asset(ImageAssets.imagePlaceholder),
//       ),
//     );
//   }
// }
