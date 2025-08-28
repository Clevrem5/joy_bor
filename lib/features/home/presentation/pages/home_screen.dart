import 'package:joy_bor/features/home/presentation/widgets/home_body.dart';

import '../../../../core/constants/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: HomeBody(),
    );
  }
}
