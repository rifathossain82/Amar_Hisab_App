import 'package:flutter/material.dart';
import 'package:hisab_app/src/core/extensions/build_context_extension.dart';

class KTextFormField extends StatelessWidget {
  const KTextFormField({
    Key? key,
    required this.controller,
    this.validator,
    this.focusNode,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.maxLines,
    this.minLines,
    this.inputType,
    this.inputAction,
    this.suffix,
    this.prefixIcon,
    this.obscureValue,
    this.isBorder = true,
  }) : super(key: key);

  final TextEditingController controller;
  final FormFieldValidator? validator;
  final FocusNode? focusNode;
  final String? hintText;
  final String? labelText;
  final Function(String value)? onChanged;
  final int? maxLines;
  final int? minLines;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final Widget? suffix;
  final Widget? prefixIcon;
  final bool? obscureValue;
  final bool isBorder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!context.isDesktop)
          Text(
            labelText ?? '',
            style: context.textTheme.bodyLarge,
          ),
        if (!context.isDesktop) const SizedBox(height: 4),
        Row(
          children: [
            if (context.isDesktop)
              Expanded(
                child: Text(
                  labelText ?? '',
                  style: context.textTheme.bodyLarge,
                ),
              ),
            if (context.isDesktop) const SizedBox(width: 16),
            Expanded(
              flex: 5,
              child: TextFormField(
                controller: controller,
                validator: validator,
                focusNode: focusNode,
                onChanged: onChanged,
                maxLines: maxLines ?? 1,
                minLines: minLines,
                keyboardType: inputType,
                textInputAction: inputAction,
                obscureText: obscureValue ?? false,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: hintText,
                  border:
                      isBorder ? const OutlineInputBorder() : InputBorder.none,
                  suffixIcon: suffix,
                  prefixIcon: prefixIcon,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
