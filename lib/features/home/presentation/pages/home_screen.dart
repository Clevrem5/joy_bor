import '../../../../core/constants/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Center(
        child: Text(
          "Home",
          style: TextStyle(color: AppColors.white),
        ),
      ),
    );
  }
}
