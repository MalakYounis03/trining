import 'package:flutter/material.dart';
import 'package:trining/core/utils/app_colors.dart';
import 'package:trining/core/utils/app_routes.dart';
import 'package:trining/features/home/presentation/views/widgets/branch_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.branchesView);
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
                child: BranchItem(
                  branchName: 'تو بوب تيك',
                  branchNameEnglish: 'Too pop Tech',
                  contactNumber: '0594600244',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
