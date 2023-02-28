part of '../widgets/history_widget.dart';

extension on HistoryWidget {
  void navigateToTransactionScreen(BuildContext context) {
    NavigationHelper.navigateToRoute(
      context,
      RouteHelper.transactionScr,
      null,
    );
  }
}
