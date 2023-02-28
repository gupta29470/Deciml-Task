part of '../widgets/logout_widget.dart';

extension on LogoutWidget {
  void signOut(BuildContext context) {
    context.authCubit.signOut();
  }
}
