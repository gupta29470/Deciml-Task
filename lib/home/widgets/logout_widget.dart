import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pseudo_deciml/auth/cubit/auth_cubit.dart';
import 'package:pseudo_deciml/common/app_utils.dart';
import 'package:pseudo_deciml/common/constants.dart';
import 'package:pseudo_deciml/common/extensions.dart';
import 'package:pseudo_deciml/styles/colors/app_color_helper.dart';

part '../extensions/logout_widget_ext.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        signOut(context);
      },
      icon: BlocConsumer<AuthCubit, AuthState>(
        listener: (_, state) {
          state.maybeWhen(
            orElse: () {},
            failure: () {
              AppUtils.showSnackBar(
                context,
                Constants.signOutFail,
              );
            },
          );
        },
        builder: (_, state) {
          return state.maybeWhen(
            orElse: () {
              return const Icon(
                Icons.logout,
                color: AppColorHelper.glitterLake,
              );
            },
            loading: () {
              return const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: AppColorHelper.glitterLake,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
