import '../constants/app_icons.dart';
import '../constants/exports.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    super.key,
    this.icon,
    this.title,
    this.subTitle,
    this.buttonText,
    required this.callback,
    this.width,
    this.height,
  });

  final Widget? icon;
  final String? title;
  final String? subTitle;
  final String? buttonText;
  final VoidCallback callback;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(
          30.r,
        ),
      ),
      child: SizedBox(
        width: width ?? 319.w,
        height: height ?? 360.h,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 25.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                icon ??
                    SvgPicture.asset(
                      AppIcons.success,
                      width: 110.w,
                      height: 104.h,
                    ),
                // 14.verticalSpace,
                Column(
                  spacing: 10.h,
                  children: [
                    Text(
                      title ?? "Reset Successful!",
                      style: AppStyles.w600s20cxSecondaryBlack,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      subTitle ?? "You can now log in and start using our services!",
                      style: AppStyles.w400s12h100cx888888,
                    ),
                  ],
                ),
                // 15.5.verticalSpace,
                AppButton(
                  onPressed: callback,
                  height: 61,
                  text: buttonText ?? "Continue",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
