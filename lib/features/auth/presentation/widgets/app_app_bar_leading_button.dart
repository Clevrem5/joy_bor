import '../../../../core/constants/exports.dart';

class AppAppBarLeadingButton extends StatelessWidget {
  const AppAppBarLeadingButton({
    super.key,
    this.callback,
  });

  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 22.r,
            ),
          ),
        ),
      ),
    );
  }
}
