import 'package:flutter/material.dart';
import 'package:trining/features/company/widgets/company_service_box_item.dart';

class CompanyBody extends StatelessWidget {
  const CompanyBody({super.key});

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
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemBuilder: (context, index) {
              return CompanyServiceBoxItem();
            },
            itemCount: 4,
            physics: const AlwaysScrollableScrollPhysics(), // يخليها تتمدّد

            separatorBuilder: (context, index) {
              return const SizedBox(height: 5);
            },
          ),
        ),
      ),
    );
  }
}
