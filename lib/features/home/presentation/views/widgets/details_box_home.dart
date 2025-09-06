import 'package:flutter/material.dart';
import 'package:trining/features/home/presentation/views/widgets/details_box_home_item.dart';
import 'package:trining/features/home/presentation/views/widgets/title_branch_item.dart';

class DetailsBoxHome extends StatelessWidget {
  const DetailsBoxHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return Column(
            children: [
              TitleBranchItem(title: "الفروع"),
              DetailsBoxHomeItem(),
            ],
          );
        },
        itemCount: 3,
        physics: const AlwaysScrollableScrollPhysics(), // يخليها تتمدّد

        separatorBuilder: (context, index) {
          return const SizedBox(height: 5);
        },
      ),
    );
  }
}
