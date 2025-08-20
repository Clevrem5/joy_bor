import 'dart:ui';

import 'package:joy_bor/core/constants/exports.dart';


class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.appbar,
    required this.child,
  });

  final PreferredSizeWidget? appbar;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: ColoredBox(
          color: AppColors.cx000206,
          child: Stack(
            children: [
              Positioned(
                right: -7.w,
                top: 269.h,
                child: SizedBox(
                  width: 187.w,
                  height: 187.h,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.cxFF8743,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -27.w,
                bottom: 71.h,
                child: SizedBox(
                  width: 268.w,
                  height: 248.h,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.cxF2BB2E,
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 500, sigmaY: 300),
                  child: SizedBox(),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
