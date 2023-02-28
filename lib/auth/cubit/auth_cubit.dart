import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signInAnonymously() async {
    emit(const AuthState.loading());

    try {
      UserCredential userCredential = await _firebaseAuth.signInAnonymously();

      if (userCredential.user != null) {
        emit(const AuthState.authenticated());
      } else {
        emit(const AuthState.failure());
      }
    } catch (error) {
      emit(const AuthState.failure());
    }
  }

  Future<void> signOut() async {
    emit(const AuthState.loading());

    try {
      await _firebaseAuth.signOut().then(
            (_) => emit(
              const AuthState.unauthenticated(),
            ),
          );
    } catch (error) {
      emit(const AuthState.failure());
    }
  }
}
