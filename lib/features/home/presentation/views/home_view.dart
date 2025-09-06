import 'package:flutter/material.dart';
import 'package:trining/core/utils/app_colors.dart';
import 'package:trining/core/widgets/custum_app_bar.dart';
import 'package:trining/features/drawer/views/custom_drawer.dart';
import 'package:trining/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      //  extendBodyBehindAppBar: true,
      appBar: CustumAppBar(title: "الرئيسية", icon: Icons.grid_view_sharp),
      drawer: CustomDrawer(),
      body: HomeViewBody(),
    );
  }
}
