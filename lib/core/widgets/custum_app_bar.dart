import 'package:flutter/material.dart';
import 'package:trining/core/utils/app_styles.dart';

class CustumAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustumAppBar({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: AppStyles.textStyleBold16.copyWith(color: Colors.white),
      ),
      leading: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
