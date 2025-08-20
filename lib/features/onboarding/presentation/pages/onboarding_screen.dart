import 'package:joy_bor/core/constants/exports.dart';

import '../../data/mixin/onboarding_mixin.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> with OnboardingMixin {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = list[_currentIndex];
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          _backroundImage(data.image),
          _gradient(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 20.h,
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: list.length,
                    onPageChanged: (index) {
                      setState(() => _currentIndex = index);
                    },
                    itemBuilder: (context, index) {
                      final item = list[index];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            item.title,
                            style: AppStyles.w600s28h119white,
                          ),
                          10.verticalSpace,
                          Text(
                            item.subTitle,
                            style: AppStyles.w400s20h145White70,
                          ),
                        ],
                      );

                    },
                  ),
                ),
                22.verticalSpace,
                Row(
                  spacing: 5.w,
                  children: List.generate(
                    list.length,
                    (i) => SizedBox(
                      height: 3.h,
                      width: 55.w,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: i == _currentIndex ? Colors.white : AppColors.white70,
                        ),
                      ),
                    ),
                  ),
                ),
                35.verticalSpace,
                Row(
                  spacing: 12.w,
                  children: [
                    SkipButton(
                      call: () {
                        _pageController.jumpToPage(list.length - 1);
                      },
                    ),
                    Expanded(
                      child: AppButton(
                        onPressed: () {
                          if (_currentIndex < list.length - 1) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          } else {}
                        },
                        text: _currentIndex == list.length - 1 ? "Get Started" : "Next",
                      ),
                    ),
                  ],
                ),
                15.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _gradient() {
  return SizedBox(
    height: 414.h,
    child: DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            AppColors.cx000206.withValues(alpha: 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    ),
  );
}

Widget _backroundImage(String image) {
  return Image.asset(
    image,
    fit: BoxFit.cover,
  );
}
