import 'package:flutter/cupertino.dart';

import '../constants/exports.dart';

class AppAppBarLeadingButton extends StatelessWidget {
  const AppAppBarLeadingButton({
    super.key,
    this.callback,
  });

  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 50.w,
      child: CupertinoButton(
        color: AppColors.white26,
        alignment: Alignment.center,
        borderRadius: BorderRadius.circular(100.r),
        padding: EdgeInsets.zero,
        onPressed: callback ?? () => context.pop(),
        child: SvgPicture.asset(
          AppIcons.back,
          width: 16.5.w,
          height: 13.55.h,
          fit: BoxFit.cover,
        ),

      ),
    );
  }
}

/*

GestureDetector(
      onTap: () => context.pop(),
      child: SizedBox(
        height: 50.h,
        width: 50.w,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.white26,
            borderRadius: BorderRadius.circular(100.r),
          ),
          child: Center(
            child: SvgPicture.asset(
              AppIcons.back,
              width: 16.5.w,
              height: 13.55.h,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    )



*/
