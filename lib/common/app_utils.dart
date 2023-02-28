import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppUtils {
  static String tag = "AppUtils";

  static void showSnackBar(
    BuildContext context,
    String text,
  ) {
    try {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(text),
        ),
      );
    } catch (e) {
      log("$tag, Snackbar error $e");
    }
  }

  static String currentMothYear(String date) {
    return DateFormat.yMMM().format(DateTime.parse(date));
  }

  static String get storeDocumentId {
    final DateTime now = DateTime.now();
    final DateTime dateTime = DateTime(now.year, now.month, 01);
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(dateTime);
    return formatted;
  }
}
