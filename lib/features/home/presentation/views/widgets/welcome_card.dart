import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trining/core/utils/app_colors.dart';
import 'package:trining/core/utils/app_styles.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "أهلاً بك مجددًا  ",
                style: AppStyles.textStyleBold16.copyWith(
                  color: AppColors.black,
                ),
              ),
              SvgPicture.asset("assets/svg_images/hello_icon.svg"),
            ],
          ),

          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),

                    border: Border.all(color: AppColors.primary),
                  ),
                  child: Text("Malak"),
                ),
              ),
              Column(
                children: [
                  Text("TOOPOP TECH", style: AppStyles.textStyleBold14),
                  const SizedBox(height: 4),
                  Text(
                    "عضو منذ 2021",
                    style: AppStyles.textStyleRegular12.copyWith(
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "عضو منذ 2021",
                    style: AppStyles.textStyleRegular12.copyWith(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
