import 'package:flutter/material.dart';
import 'package:trining/features/home/presentation/views/widgets/details_box_home.dart';
import 'package:trining/features/home/presentation/views/widgets/welcome_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          WelcomeCard(),
          SizedBox(height: 12),
          Expanded(child: DetailsBoxHome()),
        ],
      ),
    );
  }
}
