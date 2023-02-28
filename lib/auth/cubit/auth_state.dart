part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.initial() = Initial;
  const factory AuthState.loading() = Loading;
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.unauthenticated() = UnAuthenticated;
  const factory AuthState.failure() = Failure;

  bool get isInitial => this is Initial;
  bool get isLoading => this is Loading;
  bool get isAuthenticated => this is Authenticated;
  bool get isUnauthenticated => this is UnAuthenticated;
  bool get isFailure => this is Failure;
}
