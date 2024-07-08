import 'package:amjad_smartich_solutions/core/extensions/double_extensions.dart';
import 'package:amjad_smartich_solutions/core/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType textInputType;
  final String? label;
  final String? hint;
  final String? errorText;
  final Function(String)? onChanged;
  final bool readOnly;
  final bool obscureText;
  final String? Function(String?)? validator;
  final Widget? prefix;

  const CustomTextFormField({
    super.key,
    this.label,
    this.hint,
    this.onChanged,
    this.controller,
    this.textInputType = TextInputType.text,
    this.errorText,
    this.readOnly = false,
    this.obscureText = false,
    this.validator,
    this.prefix,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label ?? "",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),
        ),
        10.0.hight,
        // !! first layer for shadow , sec layer textFomField
        Stack(
          children: [
            TextFormField().shadow,
            TextFormField(
              style: Theme.of(context).textTheme.titleMedium,
              controller: controller,
              readOnly: readOnly,
              keyboardType: textInputType,
              onChanged: onChanged,
              obscureText: obscureText,
              validator: validator,
              decoration: InputDecoration(
                filled: true,
                suffixIconConstraints: const BoxConstraints(
                  minHeight: 30,
                  minWidth: 30,
                ),
                errorText: errorText,
                prefix: prefix,
                errorMaxLines: 2,
                counterText: "",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
