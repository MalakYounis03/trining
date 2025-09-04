import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.black.withOpacity(0.05),
      thickness: 0.5,
      height: 22,
    );
  }
}
