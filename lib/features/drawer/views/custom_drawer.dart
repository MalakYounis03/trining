import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trining/core/utils/app_assets.dart';
import 'package:trining/core/utils/app_colors.dart';
import 'package:trining/core/utils/app_routes.dart';
import 'package:trining/core/utils/app_styles.dart';
import 'package:trining/features/drawer/widgets/drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primary,
      width: 300,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight, // يخليها تبدأ من اليمين
              child: Text(
                'أهلاً وسهلاً بك',
                style: AppStyles.textStyleBold16.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),

            SizedBox(height: 20),
            SvgPicture.asset(AppAssets.logo, height: 150),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg_images/verified_icon.svg",
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
                Text(
                  " تم التحقق",
                  style: AppStyles.textStyleBold14.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            DrawerItem(
              icon: Icons.home_outlined,
              title: 'الصفحة الرئيسية',
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.homeView);
              },
            ),
            DrawerItem(
              icon: Icons.room_service_outlined,
              title: ' طلب خدمات الغرفة',
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.roomView);
              },
            ),
            DrawerItem(
              icon: Icons.apartment_outlined,
              title: ' قائمة خدمات الشركة',
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.companyService);
              },
            ),

            SizedBox(height: 30),
            ListTile(
              leading: SvgPicture.asset(
                "assets/svg_images/logout_icon.svg",
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
              title: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(
                    255,
                    90,
                    158,
                    96,
                  ), // أخضر أغمق من الخلفية
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30),
                  ),
                ),
                child: Text(
                  "تسجيل الخروج",
                  style: AppStyles.textStyleBold14.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
