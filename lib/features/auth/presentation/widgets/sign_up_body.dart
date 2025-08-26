import 'package:flutter/gestures.dart';
import 'package:joy_bor/core/shared/app_dialog.dart';
import 'package:joy_bor/core/shared/app_text_field.dart';
import 'package:joy_bor/core/utils/app_validators.dart';
import 'package:joy_bor/features/auth/presentation/cubits/auth_cubit.dart';
import 'package:joy_bor/features/auth/presentation/cubits/auth_state.dart';
import 'package:joy_bor/features/auth/presentation/widgets/app_app_bar_leading_button.dart';

import '../../../../core/constants/exports.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isRemember = false;

  void _submit() {
    if (_formKey.currentState!.validate()) {
      context.read<AuthCubit>().register(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        name: nameController.text.trim(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (user) {
            showDialog(
              context: context,
              builder: (context) => AppDialog(
                callback: () {
                  context.pop();
                  context.go(AppRoutes.login);
                },
              ),
            );
          },
        );
        state.whenOrNull(
          failure: (failure) => showDialog(
            context: context,
            builder: (context) => AppDialog(
              icon: Icon(
                Icons.error,
                color: Colors.red,
                size: 100,
              ),
              title: "Something went wrong!",
              subTitle: "Please rewrite your information!",
              callback: () {
                context.pop();
              },
            ),
          ),
        );
      },
      builder: (context, state) => SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: EdgeInsets.only(left: 22.h, right: 22.h, top: 60.h),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppAppBarLeadingButton(),
              16.verticalSpace,
              Text(
                "Create Your Account",
                style: AppStyles.w600s24cxWhite,
              ),
              24.verticalSpace,
              Text(
                "Enter Name",
                style: AppStyles.w400s15h100cxC8C7CF,
              ),
              8.verticalSpace,
              AppTextField(
                hint: "Enter your name",
                controller: nameController,
                validator: (value) => Utils.validator(value),
              ),
              24.verticalSpace,
              Text(
                "Email Address",
                style: AppStyles.w400s15h100cxC8C7CF,
              ),
              8.verticalSpace,
              AppTextField(
                hint: "Enter your email",
                controller: emailController,
                validator: (value) => Utils.validatorEmail(value),
              ),
              24.verticalSpace,
              Text(
                "Password",
                style: AppStyles.w400s15h100cxC8C7CF,
              ),
              8.verticalSpace,
              AppTextField(
                controller: passwordController,
                validator: (value) => Utils.validatorPassword(value),
                obscureText: true,
                hint: "Enter your password",
              ),
              5.verticalSpace,
              _remember(),
              24.verticalSpace,
              AppButton(
                onPressed: _submit,
                text: "Sign Up",
                height: 57,
                isLoading:
                    state.whenOrNull(
                      loading: () => true,
                    ) ??
                    false,
                textStyle: AppStyles.w600s18cx100C0C,
              ),
              17.verticalSpace,
              signIn(context),
              150.verticalSpace,
              _privacy(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _remember() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 1.w,
          children: [
            Transform.scale(
              scale: 0.9,
              child: Checkbox(
                shape: const CircleBorder(),
                activeColor: Colors.white,
                checkColor: Colors.black,
                side: const BorderSide(color: AppColors.cxC8C7CF, width: 1),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity: VisualDensity.compact,
                value: isRemember,
                onChanged: (value) {
                  setState(() {
                    isRemember = value ?? false;
                  });
                },
              ),
            ),
            Text(
              "Remember Me",
              style: AppStyles.w400s14h100cxC8C7CF,
            ),
          ],
        ),
        Text(
          "Reset password",
          style: AppStyles.w400s14h100cxC8C7CF,
        ),
      ],
    );
  }

  Widget _privacy() {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "By signing up you agree to our ",
          style: AppStyles.w400s16cx9CA4AB,
          children: [
            TextSpan(
              text: "Terms \n",
              style: AppStyles.w400s16cxYellow,
              recognizer: TapGestureRecognizer()..onTap = () => context.go(AppRoutes.login),
            ),
            TextSpan(
              text: "and ",
              style: AppStyles.w400s16cx9CA4AB,
              recognizer: TapGestureRecognizer()..onTap = () => context.go(AppRoutes.login),
            ),
            TextSpan(
              text: "Conditions of Use",
              style: AppStyles.w400s16cxYellow,
              recognizer: TapGestureRecognizer()..onTap = () => context.go(AppRoutes.login),
            ),
          ],
        ),
      ),
    );
  }
}

Widget signIn(BuildContext context) {
  return Center(
    child: RichText(
      // textAlign: TextAlign.center,
      text: TextSpan(
        text: "Don’t have an account? ",
        style: AppStyles.w400s16cx9CA4AB,
        children: [
          TextSpan(
            text: "Sign In",
            style: AppStyles.w400s16cxYellow,
            recognizer: TapGestureRecognizer()..onTap = () => context.go(AppRoutes.login),
          ),
        ],
      ),
    ),
  );
}
