import 'package:flutter/cupertino.dart';
import 'package:joy_bor/core/shared/custom_icon_button.dart';
import 'package:joy_bor/features/home/presentation/widgets/adress_items.dart';

import '../../../../core/constants/exports.dart';

class CategoriesItems extends StatelessWidget {
  const CategoriesItems({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: index == 0 ? AppColors.cxFFD700 : AppColors.white8,
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 13.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10.w,
        children: [
          SvgPicture.asset(
            AppIcons.address,
            colorFilter: ColorFilter.mode(
              index == 0 ? AppColors.cx100C0C : AppColors.white5,
              BlendMode.srcIn,
            ),
          ),
          Text(
            "Manzillar",
            style: index == 0 ? AppStyles.w400s15h100h122black0C : AppStyles.w400s15h100cxC8C7CF,
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
