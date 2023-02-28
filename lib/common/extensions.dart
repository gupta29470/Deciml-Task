import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pseudo_deciml/auth/cubit/auth_cubit.dart';
import 'package:pseudo_deciml/home/cubit/store_data/transactions_cubit.dart';

extension BuildContextX on BuildContext {
  AuthCubit get authCubit => read<AuthCubit>();
  TransactionsCubit get transactionsCubit => read<TransactionsCubit>();
}
