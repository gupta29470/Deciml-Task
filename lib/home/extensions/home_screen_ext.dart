part of '../screens/home_screen.dart';

extension on _HomeScreenState {
  void calculateRoundupSpent() {
    int amountSpent = int.tryParse(_amountController.text) ?? 0;

    if (amountSpent > 0) {
      int mod = amountSpent % 10;
      int nearestTen = 10 - mod;

      roundupSpentNotifier.value = roundupConfigNotifier.value * nearestTen;
    }
  }

  void storeToFirestore() async {
    if (isNotEmpty(_amountController.text)) {
      calculateRoundupSpent();

      RoundupModel roundupModel = RoundupModel(
        roundupConfig: roundupConfigNotifier.value,
        transactionType: transactionTypeNotifier.value,
        roundupSpent: roundupSpentNotifier.value,
        amountSpent: int.tryParse(_amountController.text) ?? 0,
        category: categoryNotifier.value,
        currentTimestamp: "${DateTime.now()}",
      );

      await context.transactionsCubit
          .sendDataToFirestore(
        data: roundupModel.toJson(),
        userUid: context.authCubit.currentUser?.uid,
      )
          .then((_) {
        _amountController.text = "";
      });
    } else {
      AppUtils.showSnackBar(
        context,
        Constants.amountEmpty,
      );
    }
  }
}
