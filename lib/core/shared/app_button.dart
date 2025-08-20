import 'package:flutter/cupertino.dart';
import 'package:joy_bor/core/constants/exports.dart';


class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.height = 78,
    this.radius = 17,
    this.backroundColor = AppColors.cxFFD700,
    this.textStyle,
  });

  final VoidCallback onPressed;
  final String text;
  final double? radius;
  final double? height;
  final Color? backroundColor;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height!.h,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: backroundColor,
          borderRadius: BorderRadius.circular(radius!.r),
        ),
        child: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          child: Text(
            text,
            style: textStyle ?? AppStyles.w600s24cx100C0C,
          ),
        ),
      ),
    );
  }
}
