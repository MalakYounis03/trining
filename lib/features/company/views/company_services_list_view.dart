import 'package:flutter/material.dart';
import 'package:trining/core/utils/app_colors.dart';
import 'package:trining/core/utils/app_routes.dart';
import 'package:trining/core/widgets/custum_app_bar.dart';
import 'package:trining/features/company/widgets/company_body.dart';

class CompanyServicesListView extends StatelessWidget {
  const CompanyServicesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      //  extendBodyBehindAppBar: true,
      appBar: CustumAppBar(
        title: "قائمة خدمات الشركة",
        icon: Icons.arrow_back_ios_new,
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.homeView);
        },
      ),
      //drawer: CustomDrawer(),
      body: CompanyBody(),
    );
  }
}
