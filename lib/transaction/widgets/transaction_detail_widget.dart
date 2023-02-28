import 'package:flutter/material.dart';
import 'package:pseudo_deciml/styles/text_theme/text_theme_helper.dart';

class TransactionDetailWidget extends StatelessWidget {
  final String? title;
  final String? value;

  const TransactionDetailWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$title",
          style: TextThemeHelper.quickSilver_16_400,
        ),
        Text(
          "$value",
          style: TextThemeHelper.black_16_700,
        ),
      ],
    );
  }
}
