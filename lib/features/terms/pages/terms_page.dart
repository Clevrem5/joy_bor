import 'package:joy_bor/features/terms/widgets/terms_body.dart';

import '../../../core/constants/exports.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: TermsBody(),
    );
  }
}
