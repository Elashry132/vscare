import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vscare/core/helpers/spacing.dart';
import 'package:vscare/core/themming/styles.dart';
import 'package:vscare/core/waidgets/app_text_button.dart';
import 'package:vscare/features/login/data/models/login_request_body.dart';
import 'package:vscare/features/login/logic/cubit/login_cubit.dart';

import 'widgets/already_have_account_text.dart';
import 'widgets/email_and_password.dart';
import 'widgets/logn_bloc_listener.dart';
import 'widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpacing(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpacing(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpacing(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpacing(32),
                    AppTextButton(
                      buttonText: 'Login',
                      onPressed: () {
                        validateRhenDoLogin(context);
                      },
                      textStyle: TextStyles.font16WhiteSemiBold,
                    ),
                    verticalSpacing(16),
                    const TermsAndConditionsText(),
                    verticalSpacing(60),
                    const AlreadyHaveAccountText(),
                    const LoginBlocListner(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateRhenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}
