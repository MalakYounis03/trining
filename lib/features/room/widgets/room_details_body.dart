import 'package:flutter/material.dart';
import 'package:trining/core/utils/app_routes.dart';
import 'package:trining/core/utils/app_styles.dart';
import 'package:trining/features/home/presentation/views/widgets/details_box_home_item.dart';

class RoomDetailsBody extends StatelessWidget {
  const RoomDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text("التفاصيل", style: AppStyles.textStyleBold14),
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  return DetailsBoxHomeItem(route: AppRoutes.roomDetailsView);
                },
                itemCount: 3,
                physics: const AlwaysScrollableScrollPhysics(), // يخليها تتمدّد

                separatorBuilder: (context, index) {
                  return const SizedBox(height: 5);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
