import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trining/core/utils/app_assets.dart';
import 'package:trining/core/utils/app_colors.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(color: AppColors.primary),
        //  Image.asset(AppAssets.background, fit: BoxFit.fill),
        SvgPicture.asset(AppAssets.logo, width: 150, height: 200),
      ],
    );
  }
}
