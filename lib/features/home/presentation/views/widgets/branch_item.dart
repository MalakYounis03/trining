import 'package:flutter/material.dart';
import 'package:trining/core/utils/app_colors.dart';
import 'package:trining/core/widgets/custom_divider.dart';
import 'package:trining/core/widgets/label_value_row.dart';

class BranchItem extends StatelessWidget {
  const BranchItem({
    super.key,
    required this.branchName,
    required this.branchNameEnglish,
    this.landline,
    required this.contactNumber,
    required this.title,
  });

  final String branchName;
  final String branchNameEnglish;
  final String? landline;
  final String contactNumber;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            SizedBox(
              height: 22,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  elevation: 0,
                ),
                onPressed: () {},
                child: const Text(
                  "المزيد",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        LabelValueRow(label: 'اسم الفرع', value: branchName),
        CustomDivider(),
        LabelValueRow(label: 'اسم الفرع بالانجليزية', value: branchNameEnglish),
        Visibility(
          visible: landline?.isNotEmpty ?? false,
          child: Column(
            children: [
              CustomDivider(),
              LabelValueRow(label: 'الهاتف الثابت', value: landline ?? ''),
            ],
          ),
        ),
        CustomDivider(),
        LabelValueRow(label: 'رقم التواصل', value: contactNumber),
      ],
    );
  }
}
