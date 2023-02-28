import 'package:pseudo_deciml/common/app_utils.dart';

class Paths {
  static String storeTransactionPath({required String? userUid}) {
    return "users/$userUid/monthly_transactions/${AppUtils.storeDocumentId}";
  }

  static String fetchMonthlyTransaction({required String? userUid}) {
    return "users/$userUid/monthly_transactions";
  }

  static String get transactions {
    return "transactions";
  }
}
