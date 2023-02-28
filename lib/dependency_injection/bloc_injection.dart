import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pseudo_deciml/auth/cubit/auth_cubit.dart';
import 'package:pseudo_deciml/home/cubit/store_data/transactions_cubit.dart';

class BlocInjection extends StatelessWidget {
  final Widget child;

  const BlocInjection({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: ((context) => TransactionsCubit()),
        ),
      ],
      child: child,
    );
  }
}
