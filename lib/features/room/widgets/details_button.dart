import 'package:flutter/material.dart';
import 'package:trining/core/utils/app_colors.dart';
import 'package:trining/core/utils/app_routes.dart';
import 'package:trining/core/utils/app_styles.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft, // يبدأ من اليمين
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.roomDetailsView);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.black, // لون الخلفية
          foregroundColor: Colors.white, // لون النص/الرipple
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28), // الحواف الدائرية
          ),
        ),
        child: Text(
          'عرض التفاصيل',
          style: AppStyles.textStyleBold9.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
