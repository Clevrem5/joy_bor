import '../../../core/constants/exports.dart';
import '../../../core/shared/app_app_bar_leading_button.dart';

class TermsBody extends StatelessWidget {
  const TermsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22.w, right: 22.w, top: 60.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AppAppBarLeadingButton(),
              44.horizontalSpace,
              Text(
                "Terms & Conditions",
                style: AppStyles.w600s18h32white,
              ),
            ],
          ),
          20.verticalSpace,
          Expanded(
            child: ListView(
              children: [
                Text(
                  "1. Terms",
                  style: AppStyles.w600s16h24White,
                ),
                10.verticalSpace,
                Text(
                  "Lorem ipsum dolor sit amet...",
                  style: AppStyles.w500s14h100cxC8C7CF,
                ),
                30.verticalSpace,
                Text(
                  "Lorem ipsum dolor sit amet...",
                  style: AppStyles.w500s14h100cxC8C7CF,
                ),
                46.verticalSpace,
                Text(
                  "Changes to the Service and/or Terms:",
                  style: AppStyles.w600s16h24White,
                ),
                10.verticalSpace,
                Text(
                  "Lorem ipsum dolor sit amet...",
                  style: AppStyles.w500s14h100cxC8C7CF,
                ),
                30.verticalSpace,
                Text(
                  "Lorem ipsum dolor sit amet...",
                  style: AppStyles.w500s14h100cxC8C7CF,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
