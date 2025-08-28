import 'package:flutter/cupertino.dart';

import '../constants/exports.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.callback,
    this.width,
    this.height,
    this.childWidth,
    this.childHeight,
    this.backroundColor,
    this.child,
  });

  final VoidCallback? callback;
  final double? width, height;
  final double? childWidth, childHeight;
  final Color? backroundColor;
  final String? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 56.h,
      width: width ?? 56.w,
      child: CupertinoButton(
        color: backroundColor ?? AppColors.white8,
        alignment: Alignment.center,
        borderRadius: BorderRadius.circular(100.r),
        padding: EdgeInsets.zero,
        onPressed: callback ?? () {},
        child: SvgPicture.asset(
          child ?? AppIcons.notification,
          width: childWidth ?? 24.w,
          height: childHeight ?? 24.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
