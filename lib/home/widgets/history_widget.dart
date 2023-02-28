import 'package:flutter/material.dart';
import 'package:pseudo_deciml/common/navigation_helper.dart';
import 'package:pseudo_deciml/common/route_helper.dart';
import 'package:pseudo_deciml/styles/colors/app_color_helper.dart';

part '../extensions/history_widget_ext.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.only(right: 24),
      onPressed: () {
        navigateToTransactionScreen(context);
      },
      icon: const Icon(
        Icons.history,
        color: AppColorHelper.glitterLake,
      ),
    );
  }
}
