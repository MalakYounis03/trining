import 'package:flutter/material.dart';
import 'package:trining/core/widgets/custom_divider.dart';
import 'package:trining/core/widgets/label_value_row.dart';

class BranchItem extends StatelessWidget {
  const BranchItem({
    super.key,
    required this.branchName,
    required this.branchNameEnglish,
    this.landline,
    required this.contactNumber,
  });

  final String branchName;
  final String branchNameEnglish;
  final String? landline;
  final String contactNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
