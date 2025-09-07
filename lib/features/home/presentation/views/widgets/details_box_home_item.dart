import 'package:flutter/material.dart';
import 'package:trining/core/utils/app_colors.dart';
import 'package:trining/features/home/presentation/views/widgets/branch_item.dart';
import 'package:trining/features/room/widgets/details_button.dart';

class DetailsBoxHomeItem extends StatelessWidget {
  const DetailsBoxHomeItem({
    super.key,
    required this.route,
    this.showDetailsButton = false,
  });
  final String route;
  final bool showDetailsButton;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
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
              firstLable: 'اسم الفرع',
              secondLable: 'اسم الفرع بالانجليزية',
              thirdLable: 'رقم التواصل',
              branchName: 'تو بوب تيك',
              branchNameEnglish: 'Too pop Tech',
              contactNumber: '0594600244',
            ),
            SizedBox(height: 10),
            if (showDetailsButton) const DetailsButton(), // 👈 شرط الظهور
          ],
        ),
      ),
    );
  }
}
