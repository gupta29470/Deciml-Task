import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pseudo_deciml/auth/screens/auth_screen.dart';
import 'package:pseudo_deciml/common/extensions.dart';
import 'package:pseudo_deciml/common/navigation_helper.dart';
import 'package:pseudo_deciml/dependency_injection/bloc_injection.dart';
import 'package:pseudo_deciml/home/cubit/store_data/transactions_cubit.dart';
import 'package:pseudo_deciml/home/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocInjection(
      child: MaterialApp(
        title: 'Pseudo Deciml',
        onGenerateRoute: NavigationHelper.generateRoute,
        onGenerateInitialRoutes: (String initialRouteName) {
          return [
            MaterialPageRoute(
              builder: (_) => const DeciderWidget(),
            ),
          ];
        },
      ),
    );
  }
}

class DeciderWidget extends StatelessWidget {
  const DeciderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: context.authCubit.authStateChanges,
      builder: (_, snapshot) {
        if (snapshot.hasData) {
          return const HomeScreen();
        } else {
          return const AuthScreen();
        }
      },
    );
  }
}
