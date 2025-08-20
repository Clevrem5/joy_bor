import 'package:flutter/cupertino.dart';
import 'package:joy_bor/core/constants/exports.dart';



class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    required this.call,
  });

  final VoidCallback call;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.h,
      width: 75.w,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(17.r),
          border: Border.all(
            color: AppColors.white26,
            width: 1.w,
          ),
        ),
        child: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: call,
          child: Text(
            "Skip",
            style: AppStyles.w600s19white,
          ),
        ),
      ),
    );
  }
}
