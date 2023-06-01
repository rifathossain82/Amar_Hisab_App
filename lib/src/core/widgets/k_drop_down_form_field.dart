import 'package:flutter/material.dart';
import 'package:hisab_app/src/core/extensions/build_context_extension.dart';

class KDropDownFormField extends StatelessWidget {
  const KDropDownFormField({
    Key? key,
    required this.selectedValue,
    required this.items,
    this.validator,
    this.hintText,
    this.labelText,
    this.onChanged,
  }) : super(key: key);

  final dynamic selectedValue;
  final List<dynamic> items;
  final FormFieldValidator? validator;
  final String? hintText;
  final String? labelText;
  final ValueChanged? onChanged;

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
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  isDense: true,
                  hintText: hintText,
                  border: const OutlineInputBorder(),
                ),
                dropdownColor: context.primaryColor,
                items: items
                    .map(
                      (item) => DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      ),
                    )
                    .toList(),
                value: selectedValue,
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
