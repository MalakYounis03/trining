import 'package:flutter/material.dart';
import 'package:trining/core/utils/app_colors.dart';
import 'package:trining/core/utils/app_styles.dart';
import 'package:trining/features/home/presentation/views/widgets/branch_item.dart';

class ExpandableBranchItem extends StatelessWidget {
  const ExpandableBranchItem({
    super.key,
    required this.branchName,
    required this.branchNameEnglish,
    required this.contactNumber,
    required this.landline,
    required this.isExpanded,
    required this.onExpandTap,
  });
  final String branchName;
  final String branchNameEnglish;
  final String contactNumber;
  final String landline;
  final bool isExpanded;
  final void Function() onExpandTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.greyLight,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onExpandTap,
            child: Row(
              children: [
                Text(
                  branchName,
                  style: AppStyles.textStyleBold14.copyWith(
                    color: AppColors.black,
                  ),
                ),
                Spacer(),
                Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.borderColor,
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),

          Visibility(
            visible: isExpanded,
            child: Padding(
              padding: EdgeInsetsDirectional.only(top: 14),
              child: BranchItem(
                title: "الفروع",
                branchName: branchName,
                branchNameEnglish: branchNameEnglish,
                landline: landline,
                contactNumber: contactNumber,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
