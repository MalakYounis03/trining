import 'package:flutter/material.dart';
import 'package:trining/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      //   appBar: CustomAppBar(),
      // drawer: CustomDrawer(),
      body: HomeViewBody(),
    );
  }
}
