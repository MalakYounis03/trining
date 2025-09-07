import 'package:flutter/material.dart';
import 'package:trining/core/utils/app_colors.dart';
import 'package:trining/core/utils/app_styles.dart';

class LabelValueRow extends StatelessWidget {
  const LabelValueRow({
    super.key,
    required this.label,
    required this.value,
    this.operations,
  });

  final String? label;
  final String value;
  final Widget? operations;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label!, style: AppStyles.textStyleRegular12),
        Expanded(
          child: Text(
            value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.end,
            style: AppStyles.textStyleRegular12.copyWith(color: AppColors.grey),
          ),
        ),
      ],
    );
  }
}
