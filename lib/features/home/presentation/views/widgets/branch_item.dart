import 'package:flutter/material.dart';
import 'package:trining/core/widgets/custom_divider.dart';
import 'package:trining/core/widgets/label_value_row.dart';
import 'package:trining/features/company/widgets/edit_delete_actions.dart';

class BranchItem extends StatelessWidget {
  const BranchItem({
    super.key,
    required this.branchName,
    required this.branchNameEnglish,
    this.landline,
    this.contactNumber,
    required this.firstLable,
    required this.secondLable,
    this.thirdLable,
    this.operations,
    this.operationsWidget,
  });

  final String branchName;
  final String branchNameEnglish;
  final String? landline;
  final String? contactNumber;
  final String firstLable;
  final String secondLable;
  final String? thirdLable;
  final String? operations;
  final Widget? operationsWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabelValueRow(label: firstLable, value: branchName),
        CustomDivider(),
        LabelValueRow(label: secondLable, value: branchNameEnglish),
        Visibility(
          visible: landline?.isNotEmpty ?? false,
          child: Column(
            children: [
              CustomDivider(),
              LabelValueRow(label: 'الهاتف الثابت', value: landline ?? ''),
            ],
          ),
        ),
        Visibility(
          visible: contactNumber?.isNotEmpty ?? false,
          child: Column(
            children: [
              CustomDivider(),
              LabelValueRow(
                label: thirdLable ?? 'رقم الجوال',
                value: contactNumber ?? '',
              ),
            ],
          ),
        ),
        Visibility(
          visible: operationsWidget != null,
          child: Column(
            children: [
              CustomDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(operations ?? 'العمليات'), // بدون !
                  EditDeleteActions(onDelete: () {}, onEdit: () {}),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
