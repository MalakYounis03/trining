import 'package:flutter/material.dart';
import 'package:trining/core/utils/app_colors.dart';
import 'package:trining/features/company/widgets/edit_delete_actions.dart';
import 'package:trining/features/home/presentation/views/widgets/branch_item.dart';

class CompanyServiceBoxItem extends StatelessWidget {
  const CompanyServiceBoxItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 11, bottom: 20),
      padding: EdgeInsetsDirectional.only(
        start: 16,
        end: 20,
        top: 25,
        bottom: 22,
      ),
      decoration: BoxDecoration(
        color: AppColors.greyLight,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Column(
        children: [
          BranchItem(
            firstLable: 'اسم الخدمة',
            secondLable: "تاريخ الاضافة",
            thirdLable: ' العمليات',
            branchName: 'برمجة تطبيقات',
            branchNameEnglish: '12-08-2023',
            operationsWidget: EditDeleteActions(onEdit: () {}, onDelete: () {}),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
