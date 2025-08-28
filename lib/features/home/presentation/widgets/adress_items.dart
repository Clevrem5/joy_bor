import '../../../../core/constants/exports.dart';

class AdressItems extends StatelessWidget {
  const AdressItems({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.white8,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
              child: Image.network(
                "https://www.japan-guide.com/thumb/destination_tokyo.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dream View",
                  style: AppStyles.w400s14h122white,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                5.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$140.00",
                      style: AppStyles.w600s14cxWhite,
                    ),
                    Row(
                      spacing: 4.w,
                      children: [
                        SvgPicture.asset(AppIcons.star),
                        Text(
                          "5.0",
                          style: AppStyles.w400s14white50,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
