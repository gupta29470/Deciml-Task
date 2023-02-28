part of '../screens/transactions_screen.dart';

extension on _TransactionsScreenState {
  int calculateTotalRoundup(
    Map<String, TransactionModel> transactionsMap,
  ) {
    int totalRoundup = 0;
    transactionsMap.forEach((key, value) {
      totalRoundup += value.totalRoundup ?? 0;
    });

    return totalRoundup;
  }
}
