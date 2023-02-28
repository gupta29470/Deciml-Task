import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pseudo_deciml/common/app_utils.dart';
import 'package:pseudo_deciml/common/constants.dart';
import 'package:pseudo_deciml/common/extensions.dart';
import 'package:pseudo_deciml/home/cubit/store_data/transactions_cubit.dart';
import 'package:pseudo_deciml/home/models/roundup_model.dart';
import 'package:pseudo_deciml/styles/colors/app_color_helper.dart';
import 'package:pseudo_deciml/styles/text_theme/text_theme_helper.dart';
import 'package:pseudo_deciml/transaction/models/transaction_model.dart';
import 'package:pseudo_deciml/transaction/widgets/transaction_detail_widget.dart';
import 'package:quiver/strings.dart';

part '../extensions/transactions_screen_ext.dart';

class TransactionsScreen extends StatefulWidget {
  static const String tag = "TransactionScreen";

  const TransactionsScreen({super.key});

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  @override
  void didChangeDependencies() {
    context.transactionsCubit.getTransactionData(
      userUid: context.authCubit.currentUser?.uid,
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 44,
                  bottom: 24,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: AppColorHelper.black,
                      ),
                    ),
                    Text(
                      "Transactions",
                      style: TextThemeHelper.black_20_700,
                    ),
                  ],
                ),
              ),
              BlocBuilder<TransactionsCubit, TransactionsState>(
                builder: (_, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return const SizedBox.shrink();
                    },
                    fetchSuccess: (transactionsMap) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: Text(
                          "Roundup Till Now: ${calculateTotalRoundup(transactionsMap)}",
                          style: TextThemeHelper.glitterLake_20_700,
                        ),
                      );
                    },
                  );
                },
              ),
              BlocConsumer<TransactionsCubit, TransactionsState>(
                listener: (_, state) {
                  state.maybeWhen(
                      orElse: () {},
                      fetchFailure: () {
                        AppUtils.showSnackBar(
                          context,
                          Constants.transactionsFetchFail,
                        );
                      });
                },
                builder: (_, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return const SizedBox.shrink();
                    },
                    fetchLoading: () {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircularProgressIndicator(
                            color: AppColorHelper.glitterLake,
                          ),
                        ],
                      );
                    },
                    fetchFailure: () {
                      return Text(
                        Constants.transactionsFetchFail,
                        style: TextThemeHelper.quickSilver_16_400,
                        textAlign: TextAlign.center,
                      );
                    },
                    fetchSuccess: ((transactionsMap) {
                      if (transactionsMap.isNotEmpty) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: transactionsMap.entries.map((entry) {
                                if (entry.value.transactions?.isNotEmpty ==
                                    true) {
                                  List<RoundupModel?> transactions =
                                      entry.value.transactions ?? [];
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        AppUtils.currentMothYear(entry.key),
                                        style:
                                            TextThemeHelper.glitterLake_20_700,
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          for (int index = 0;
                                              index < transactions.length;
                                              index++) ...[
                                            if (isNotEmpty(transactions[index]
                                                ?.transactionType)) ...[
                                              TransactionDetailWidget(
                                                title: "Transaction Type",
                                                value:
                                                    "${transactions[index]?.transactionType}",
                                              ),
                                            ],
                                            if (transactions[index]
                                                    ?.amountSpent !=
                                                null) ...[
                                              TransactionDetailWidget(
                                                title: "Amount Spent",
                                                value:
                                                    "${transactions[index]?.amountSpent}",
                                              ),
                                            ],
                                            if (transactions[index]
                                                    ?.roundupSpent !=
                                                null) ...[
                                              TransactionDetailWidget(
                                                title: "Roundup",
                                                value:
                                                    "${transactions[index]?.roundupSpent}",
                                              ),
                                              const SizedBox(height: 12),
                                              const Divider(),
                                              const SizedBox(
                                                height: 12,
                                              )
                                            ],
                                          ],
                                        ],
                                      ),
                                    ],
                                  );
                                }
                                return const SizedBox.shrink();
                              }).toList(),
                            ),
                          ],
                        );
                      }
                      return Text(
                        Constants.noTransactions,
                        style: TextThemeHelper.quickSilver_16_400,
                        textAlign: TextAlign.center,
                      );
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
