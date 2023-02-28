class Constants {
  static const String signInFail = "Something went wrong while signing in";

  static const String signOutFail = "Something went wrong while signing out";

  static const List<int> roundupList = [
    10,
    20,
    30,
    40,
    50,
    60,
    70,
    80,
    90,
    100,
  ];

  static const List<String> transactionTypeList = [
    "Credit",
    "Debit",
  ];

  static const List<String> categoryList = [
    "Food",
    "Travel",
    "Book",
    "Gadget",
    "Grooming",
  ];

  static const String dataStoredSuccess =
      "Transaction store successfully, check history";

  static const String dataStoredFailure =
      "Something went wrong while storing data, please try again";

  static const String amountEmpty = "Please fill amount";

  static const String transactionsFetchFail =
      "Something went wrong while getting transactions";

  static const String noTransactions = "You haven't made any transactions yet";
}
