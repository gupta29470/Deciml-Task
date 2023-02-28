import 'package:flutter/material.dart';
import 'package:pseudo_deciml/common/route_helper.dart';
import 'package:pseudo_deciml/main.dart';
import 'package:pseudo_deciml/transaction/screens/transactions_screen.dart';

class NavigationHelper {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteHelper.transactionScr:
        return getPageTransitionRoute(
          settings,
          const TransactionsScreen(),
        );

      default:
        return getPageTransitionRoute(
          settings,
          const DeciderWidget(),
        );
    }
  }

  static Future<T?> navigateToRoute<T>(
    BuildContext context,
    String routeName,
    dynamic args,
  ) {
    return Navigator.pushNamed(
      context,
      routeName,
      arguments: args,
    );
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }

  static MaterialPageRoute getPageTransitionRoute(
    RouteSettings settings,
    Widget widget,
  ) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => widget,
    );
  }
}
