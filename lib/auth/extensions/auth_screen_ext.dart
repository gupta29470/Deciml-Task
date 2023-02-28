part of '../screens/auth_screen.dart';

extension on AuthScreen {
  void signInButtonTapped(BuildContext context) {
    context.authCubit.signInAnonymously();
  }
}
