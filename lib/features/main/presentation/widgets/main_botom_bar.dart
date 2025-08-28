import '../../../../core/constants/exports.dart';

class MainBottomBar extends StatelessWidget {
  const MainBottomBar({super.key, required this.currentIndex});

  final ValueNotifier<int> currentIndex;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: currentIndex,
      builder: (context, value, child) => ColoredBox(
        color: AppColors.black30,
        child: SizedBox(
          height: 80.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: _buildItem(index: 0, icon: AppIcons.home, title: "Home")),
                Expanded(child: _buildItem(index: 1, icon: AppIcons.map, title: "Map")),
                Expanded(child: _buildMicroItem(2)),
                Expanded(child: _buildItem(index: 3, icon: AppIcons.wishlist, title: "Wishlist")),
                Expanded(child: _buildItem(index: 4, icon: AppIcons.settings, title: "Settings")),
              ],
            ),

          ),
        ),
      ),
    );
  }

  Widget _buildItem({
    required int index,
    required String icon,
    required String title,
  }) {
    final isSelected = currentIndex.value == index;

    return GestureDetector(
      onTap: () => currentIndex.value = index,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 5.h,
        children: [
          SvgPicture.asset(
            icon,
            height: 24.h,
            width: 24.w,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              isSelected ? AppColors.white : AppColors.gray,
              BlendMode.srcIn,
            ),
          ),
          Text(
            title,
            style: isSelected ? AppStyles.w400s11White : AppStyles.w400s11gray,
          ),
        ],
      ),
    );
  }

  Widget _buildMicroItem(int index) {
    return GestureDetector(
      onTap: () => currentIndex.value = index,
      child: SizedBox(
        height: 45.h,
        width: 45.w,
        child: SvgPicture.asset(
          AppIcons.audio,
          fit: BoxFit.contain,
          colorFilter: ColorFilter.mode(
            currentIndex.value == 2 ? AppColors.white : AppColors.gray,
            BlendMode.srcIn,
          ),
        ),
      ),

    );
  }
}
