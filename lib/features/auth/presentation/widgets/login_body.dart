import 'package:flutter/gestures.dart';
import 'package:joy_bor/core/shared/app_text_field.dart';
import 'package:joy_bor/core/utils/app_validators.dart';
import 'package:joy_bor/features/auth/presentation/cubits/auth_state.dart';

import '../../../../core/constants/exports.dart';
import '../cubits/auth_cubit.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (user) {
            // context.read<SplashCubit>().main();
            context.pushReplacement(AppRoutes.main);
          },
          failure: (failure) => context.pop(),
        );
      },
      builder: (context, state) => Form(
        key: formKey,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.h),
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  30.verticalSpace,
                  Center(
                    child: SvgPicture.asset(
                      AppImages.logo,
                      height: 44.h,
                      width: 174.w,
                    ),
                  ),
                  80.verticalSpace,
                  Text(
                    "Email address",
                    style: AppStyles.w400s15h100cxC8C7CF,
                  ),
                  8.verticalSpace,
                  AppTextField(
                    controller: emailController,
                    hint: "Enter your email",
                    validator: (value) => Utils.validator(value),
                  ),
                  20.verticalSpace,
                  Text(
                    "Password",
                    style: AppStyles.w400s15h100cxC8C7CF,
                  ),
                  8.verticalSpace,
                  AppTextField(
                    controller: passwordController,
                    hint: "Enter your password",
                    obscureText: true,
                    validator: (value) => Utils.validatorPassword(value),
                  ),
                  22.verticalSpace,
                  AppButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<AuthCubit>().login(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim(),
                        );
                      }
                    },
                    text: "Login",
                    height: 60,
                    isLoading: state.whenOrNull(loading: () => true) ?? false,
                    textStyle: AppStyles.w600s18cx100C0C,
                  ),
                  12.verticalSpace,
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Don't you have account? ",
                      style: AppStyles.w400s16cx9CA4AB, // Asosiy style
                      children: [
                        TextSpan(
                          text: 'Sign Up ',
                          style: AppStyles.w400s16cxYellow,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.push(AppRoutes.signUp);
                            },
                        ),
                      ],
                    ),
                  ),
                  310.verticalSpace,
                  Center(
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
