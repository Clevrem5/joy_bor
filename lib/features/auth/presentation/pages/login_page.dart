import 'package:joy_bor/features/auth/presentation/cubits/auth_cubit.dart';
import 'package:joy_bor/features/auth/presentation/widgets/login_body.dart';

import '../../../../core/constants/exports.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: AppScaffold(
        child: LoginBody(),
      ),
    );
  }
}
