import 'package:demop/utils/extensions/empty_padding.dart';
import 'package:demop/utils/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientProgressBar extends StatelessWidget {
  ///it can be anything between 0 to 100
  final int percent;
  final Gradient gradient;
  final Color backgroundColor;

  const GradientProgressBar(
      {required this.percent,
      required this.gradient,
      required this.backgroundColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: percent,
          fit: FlexFit.tight,
          child: Container(
            decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: percent == 100
                  ? BorderRadius.all(Radius.circular(AppRadius.r4.r))
                  : BorderRadius.only(
                      bottomLeft: Radius.circular(AppRadius.r4.r),
                      topLeft: Radius.circular(AppRadius.r4.r)),
            ),
            child: AppSize.s6.h.ph,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 100 - percent,
          child: Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: percent == 0
                  ? BorderRadius.all(Radius.circular(AppRadius.r4.r))
                  : BorderRadius.only(
                      bottomRight: Radius.circular(AppRadius.r4.r),
                      topRight: Radius.circular(AppRadius.r4.r)),
            ),
            child: AppSize.s6.h.ph,
          ),
        ),
      ],
    );
  }
}
