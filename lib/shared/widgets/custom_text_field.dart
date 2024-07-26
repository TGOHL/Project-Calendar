import 'package:flutter/material.dart';
import 'package:project_calendar/shared/config/styles.dart';
import 'package:project_calendar/shared/config/themes.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String? hint;
  final Widget? suffixIcon;
  final bool obscureText;
  final Function(String)? onChanged;
  const CustomTextField({
    super.key,
    this.controller,
    required this.label,
    this.hint,
    this.suffixIcon,
    this.obscureText = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppStyles.kSB14TextStyle),
        TextFormField(
          controller: controller,
          cursorColor: AppThemes.fontMain,
          style: AppStyles.kSB16TextStyle,
          obscureText: obscureText,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppStyles.kR16TextStyle.copyWith(color: AppThemes.fontSecondary),
            border: const UnderlineInputBorder(borderSide: BorderSide(color: AppThemes.fontMain)),
            errorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppThemes.red)),
            enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppThemes.borderColor)),
            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppThemes.fontMain)),
            disabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppThemes.borderColor)),
            focusedErrorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppThemes.red)),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
