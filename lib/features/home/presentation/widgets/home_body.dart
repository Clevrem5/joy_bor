import 'package:flutter/cupertino.dart';
import 'package:joy_bor/core/shared/custom_icon_button.dart';
import 'package:joy_bor/features/home/presentation/widgets/adress_items.dart';
import 'package:joy_bor/features/home/presentation/widgets/categories_items.dart';

import '../../../../core/constants/exports.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 22.h, right: 22.h, top: 25.h),
        child: CustomScrollView(
          clipBehavior: Clip.none,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "Plan Your\n"
                      "Perfect Trip",
                      style: AppStyles.w600s28h122white,
                    ),
                  ),
                  CustomIconButton(
                    callback: () {},
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(child: 28.verticalSpace),
            SliverToBoxAdapter(
              child: AppTextField(
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Icon(
                    CupertinoIcons.search,
                    color: AppColors.cxC8C7CF,
                    size: 20,
                  ),
                ),
                hint: "Search",
                fillColor: AppColors.white8,
                suffixIcon: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: SizedBox(
                    height: 44.h,
                    width: 45.w,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.cxFFD700,
                        borderRadius: BorderRadius.circular(9.r),
                      ),
                      child: CupertinoButton(
                        onPressed: () {},
                        padding: EdgeInsets.zero,
                        child: Center(
                          child: SvgPicture.asset(
                            AppIcons.filter,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: 22.verticalSpace),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 48.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  itemCount: 10,
                  separatorBuilder: (context, index) => SizedBox(width: 10.w),
                  itemBuilder: (context, index) => CategoriesItems(
                    index: index,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: 22.verticalSpace),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: 20,
                (context, index) {
                  return AdressItems();
                },
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.h,
                mainAxisExtent: 215.h,
                childAspectRatio: 177.w / 214.h, // faqat bitta parametrni ishlatamiz
              ),
            ),
            SliverToBoxAdapter(
              child: 50.verticalSpace,
            ),
          ],
        ),
      ),
    );
  }
}
