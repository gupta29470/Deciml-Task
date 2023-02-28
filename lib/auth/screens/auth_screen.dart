import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pseudo_deciml/auth/cubit/auth_cubit.dart';
import 'package:pseudo_deciml/common/app_utils.dart';
import 'package:pseudo_deciml/common/constants.dart';
import 'package:pseudo_deciml/common/extensions.dart';
import 'package:pseudo_deciml/styles/colors/app_color_helper.dart';
import 'package:pseudo_deciml/styles/text_theme/text_theme_helper.dart';

part '../extensions/auth_screen_ext.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: MaterialButton(
            padding: const EdgeInsets.all(16),
            onPressed: () {
              signInButtonTapped(context);
            },
            color: AppColorHelper.glitterLake,
            minWidth: double.infinity,
            child: BlocConsumer<AuthCubit, AuthState>(
              listener: (_, state) {
                state.maybeWhen(
                    orElse: () {},
                    failure: () {
                      AppUtils.showSnackBar(
                        context,
                        Constants.signInFail,
                      );
                    });
              },
              builder: (_, state) {
                return state.maybeWhen(
                  orElse: () {
                    return Text(
                      "Sign In",
                      style: TextThemeHelper.white_14_700,
                      textAlign: TextAlign.center,
                    );
                  },
                  loading: () {
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
            ),
          ),
        ),
      ),
    );
  }
}
