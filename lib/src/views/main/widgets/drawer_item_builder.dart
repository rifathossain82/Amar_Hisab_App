import 'package:flutter/material.dart';
import 'package:hisab_app/src/core/extensions/build_context_extension.dart';
import 'package:hisab_app/src/core/utils/color.dart';
import 'package:hisab_app/src/models/business_model.dart';

class DrawerItemBuilder extends StatelessWidget {
  final BusinessModel business;
  final bool isSelected;
  final VoidCallback onTap;

  const DrawerItemBuilder({
    Key? key,
    required this.business,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0.0,
      tileColor: isSelected ? kPrimarySwatchColor : null,
      leading: Icon(
        Icons.business,
        color: isSelected ? kWhite : null,
      ),
      title: Text(
        business.name,
        style: context.textTheme.titleMedium!.copyWith(
          color: isSelected ? kWhite : null,
        ),
      ),
      subtitle: Text(
        '${business.totalBooks} ${business.totalBooks > 1 ? 'Books' : 'Book'}',
        style: isSelected
            ? context.textTheme.bodyMedium!.copyWith(
                color: kWhite.withOpacity(0.7),
              )
            : null,
      ),
    );
  }
}
