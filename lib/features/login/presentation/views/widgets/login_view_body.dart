import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trining/core/utils/app_assets.dart';
import 'package:trining/features/login/presentation/views/widgets/login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //  Container(color: AppColors.primary),
        Image.asset(AppAssets.background, fit: BoxFit.fill),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets.logo, width: 150),
              SizedBox(height: 50),
              LoginForm(),
            ],
          ),
        ),
      ],
    );
  }
}
