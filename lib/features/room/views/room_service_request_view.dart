import 'package:flutter/material.dart';
import 'package:trining/core/utils/app_colors.dart';
import 'package:trining/core/widgets/custum_app_bar.dart';
import 'package:trining/features/room/widgets/room_body.dart';

class RoomServiceRequestView extends StatelessWidget {
  const RoomServiceRequestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      //  extendBodyBehindAppBar: true,
      appBar: CustumAppBar(
        title: "طلب خدمات الغرفة",
        icon: Icons.arrow_back_ios_new,
      ),
      //drawer: CustomDrawer(),
      body: RoomBody(),
    );
  }
}
