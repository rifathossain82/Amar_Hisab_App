import 'package:flutter/material.dart';
import 'package:hisab_app/src/core/extensions/build_context_extension.dart';
import 'package:hisab_app/src/core/fake_data/fake_data.dart';
import 'package:hisab_app/src/core/widgets/box_shadow.dart';
import 'package:hisab_app/src/core/widgets/k_button.dart';
import 'package:hisab_app/src/core/widgets/k_drop_down_form_field.dart';
import 'package:hisab_app/src/core/widgets/k_text_form_field.dart';

class AddBusinessPage extends StatefulWidget {
  const AddBusinessPage({Key? key}) : super(key: key);

  @override
  State<AddBusinessPage> createState() => _AddBusinessPageState();
}

class _AddBusinessPageState extends State<AddBusinessPage> {
  final businessNameController = TextEditingController();
  String? selectedBusinessCategory;
  String? selectedBusinessType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        width: context.screenWidth,
        margin: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: context.primaryColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            KBoxShadow.containerShadow(),
          ],
        ),
        child: Column(
          crossAxisAlignment: context.isDesktop
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            KTextFormField(
              controller: businessNameController,
              labelText: 'Business Name',
              hintText: 'Business Name',
            ),
            const SizedBox(height: 15),
            KDropDownFormField(
              selectedValue: selectedBusinessCategory,
              items: businessCategories,
              labelText: 'Business Category',
              hintText: 'Select',
              onChanged: (value) {
                setState(() {
                  selectedBusinessCategory = value;
                });
              },
            ),
            const SizedBox(height: 15),
            KDropDownFormField(
              selectedValue: selectedBusinessType,
              items: businessTypes,
              labelText: 'Business Type',
              hintText: 'Select',
              onChanged: (value) {
                setState(() {
                  selectedBusinessType = value;
                });
              },
            ),
            const SizedBox(height: 30),
            KButton(
              width: context.isDesktop
                  ? context.screenWidth * 0.2
                  : context.screenWidth * 0.4,
              onPressed: () {},
              child: Text(
                'Submit',
                style: context.buttonTextStyle,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
