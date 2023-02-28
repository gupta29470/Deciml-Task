import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pseudo_deciml/common/app_utils.dart';
import 'package:pseudo_deciml/common/constants.dart';
import 'package:pseudo_deciml/common/extensions.dart';
import 'package:pseudo_deciml/home/cubit/store_data/transactions_cubit.dart';
import 'package:pseudo_deciml/home/models/roundup_model.dart';
import 'package:pseudo_deciml/home/widgets/history_widget.dart';
import 'package:pseudo_deciml/home/widgets/logout_widget.dart';
import 'package:pseudo_deciml/styles/colors/app_color_helper.dart';
import 'package:pseudo_deciml/styles/text_theme/text_theme_helper.dart';
import 'package:quiver/strings.dart';

part '../extensions/home_screen_ext.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _amountController = TextEditingController();

  final ValueNotifier<int> roundupConfigNotifier =
      ValueNotifier<int>(Constants.roundupList[0]);

  final ValueNotifier<String> transactionTypeNotifier =
      ValueNotifier<String>(Constants.transactionTypeList[0]);

  final ValueNotifier<String> categoryNotifier =
      ValueNotifier<String>(Constants.categoryList[0]);

  final ValueNotifier<int> roundupSpentNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                16,
                44,
                24,
                24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  HistoryWidget(),
                  LogoutWidget(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                44,
                20,
                40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Roundup Value",
                    style: TextThemeHelper.black_16_700,
                  ),
                  ValueListenableBuilder<int>(
                    valueListenable: roundupConfigNotifier,
                    builder: (_, roundupValue, __) {
                      return DropdownButton(
                        value: roundupValue,
                        items: Constants.roundupList.map(
                          (roundup) {
                            return DropdownMenuItem(
                              value: roundup,
                              child: Text(
                                "$roundup",
                                style: TextThemeHelper.black_20_700,
                              ),
                            );
                          },
                        ).toList(),
                        onChanged: ((value) {
                          roundupConfigNotifier.value = value ?? 10;
                        }),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                44,
                20,
                40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaction Type",
                    style: TextThemeHelper.black_16_700,
                  ),
                  ValueListenableBuilder<String>(
                    valueListenable: transactionTypeNotifier,
                    builder: (_, transactionType, __) {
                      return DropdownButton(
                        value: transactionType,
                        items: Constants.transactionTypeList.map(
                          (transactionType) {
                            return DropdownMenuItem(
                              value: transactionType,
                              child: Text(
                                transactionType,
                                style: TextThemeHelper.black_20_700,
                              ),
                            );
                          },
                        ).toList(),
                        onChanged: ((value) {
                          transactionTypeNotifier.value = value ?? "Credit";
                        }),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                44,
                20,
                40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Spend Category",
                    style: TextThemeHelper.black_16_700,
                  ),
                  ValueListenableBuilder<String>(
                    valueListenable: categoryNotifier,
                    builder: (_, category, __) {
                      return DropdownButton(
                        value: category,
                        items: Constants.categoryList.map(
                          (category) {
                            return DropdownMenuItem(
                              value: category,
                              child: Text(
                                category,
                                style: TextThemeHelper.black_20_700,
                              ),
                            );
                          },
                        ).toList(),
                        onChanged: ((value) {
                          categoryNotifier.value = value ?? "Food";
                        }),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                44,
                20,
                40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 28),
                    child: Text(
                      "Amount Spent",
                      style: TextThemeHelper.black_16_700,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _amountController,
                      keyboardType: TextInputType.number,
                      style: TextThemeHelper.black_20_700,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                44,
                20,
                40,
              ),
              child: MaterialButton(
                  color: AppColorHelper.glitterLake,
                  minWidth: double.infinity,
                  onPressed: storeToFirestore,
                  padding: const EdgeInsets.all(16),
                  child: BlocConsumer<TransactionsCubit, TransactionsState>(
                    listener: (_, state) {
                      state.maybeWhen(
                          orElse: () {},
                          storeSuccess: () {
                            AppUtils.showSnackBar(
                              context,
                              Constants.dataStoredSuccess,
                            );
                          },
                          storeFailure: () {
                            AppUtils.showSnackBar(
                              context,
                              Constants.dataStoredFailure,
                            );
                          });
                    },
                    builder: (_, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return Text(
                            "Submit",
                            style: TextThemeHelper.white_14_700,
                            textAlign: TextAlign.center,
                          );
                        },
                        storeLoading: () {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              SizedBox(
                                height: 24,
                                width: 24,
                                child: CircularProgressIndicator(
                                  color: AppColorHelper.white,
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  )),
            )
          ],
        ),
      ),
    );
  }
}
