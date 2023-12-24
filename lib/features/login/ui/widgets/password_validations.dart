// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:vscare/core/helpers/spacing.dart';
import 'package:vscare/core/themming/colors.dart';
import 'package:vscare/core/themming/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    Key? key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildValidationRow('At least 1 lowercase letter', hasLowerCase),
        verticalSpacing(2),
        BuildValidationRow('At least 1 uppercase letter', hasUpperCase),
        verticalSpacing(2),
        BuildValidationRow('At least 1 special character', hasSpecialCharacters),
        verticalSpacing(2),
        BuildValidationRow('At least 1 number', hasNumber),
        verticalSpacing(2),
        BuildValidationRow('At least 1 chaeacters long', hasMinLength),
        
      ],
    );
  }

  Widget BuildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: Colors.grey,
        ),
        horizontalSpacing(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
