import 'package:joy_bor/features/auth/presentation/cubits/auth_cubit.dart';
import 'package:joy_bor/features/auth/presentation/widgets/sign_up_body.dart';

import '../../../../core/constants/exports.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: AppScaffold(
        child: SignUpBody(),
      ),
    );
  }
}
