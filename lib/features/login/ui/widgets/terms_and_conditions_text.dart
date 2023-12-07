import 'package:flutter/material.dart';
import 'package:vscare/core/themming/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font11BrownRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font11BlackMeduim,
          ),
          TextSpan(
            text: 'and',
            style: TextStyles.font11BrownRegular,
          ),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font11BlackMeduim,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
