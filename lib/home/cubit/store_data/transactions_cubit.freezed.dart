// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storeInitial,
    required TResult Function() storeLoading,
    required TResult Function() storeSuccess,
    required TResult Function() storeFailure,
    required TResult Function() fetchInitial,
    required TResult Function() fetchLoading,
    required TResult Function(Map<String, TransactionModel> transactionsMap)
        fetchSuccess,
    required TResult Function() fetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? storeInitial,
    TResult? Function()? storeLoading,
    TResult? Function()? storeSuccess,
    TResult? Function()? storeFailure,
    TResult? Function()? fetchInitial,
    TResult? Function()? fetchLoading,
    TResult? Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult? Function()? fetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storeInitial,
    TResult Function()? storeLoading,
    TResult Function()? storeSuccess,
    TResult Function()? storeFailure,
    TResult Function()? fetchInitial,
    TResult Function()? fetchLoading,
    TResult Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult Function()? fetchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreInitial value) storeInitial,
    required TResult Function(StoreLoading value) storeLoading,
    required TResult Function(StoreSuccess value) storeSuccess,
    required TResult Function(StoreFailure value) storeFailure,
    required TResult Function(FetchInitial value) fetchInitial,
    required TResult Function(FetchLoading value) fetchLoading,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchFailure value) fetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreInitial value)? storeInitial,
    TResult? Function(StoreLoading value)? storeLoading,
    TResult? Function(StoreSuccess value)? storeSuccess,
    TResult? Function(StoreFailure value)? storeFailure,
    TResult? Function(FetchInitial value)? fetchInitial,
    TResult? Function(FetchLoading value)? fetchLoading,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchFailure value)? fetchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreInitial value)? storeInitial,
    TResult Function(StoreLoading value)? storeLoading,
    TResult Function(StoreSuccess value)? storeSuccess,
    TResult Function(StoreFailure value)? storeFailure,
    TResult Function(FetchInitial value)? fetchInitial,
    TResult Function(FetchLoading value)? fetchLoading,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsStateCopyWith<$Res> {
  factory $TransactionsStateCopyWith(
          TransactionsState value, $Res Function(TransactionsState) then) =
      _$TransactionsStateCopyWithImpl<$Res, TransactionsState>;
}

/// @nodoc
class _$TransactionsStateCopyWithImpl<$Res, $Val extends TransactionsState>
    implements $TransactionsStateCopyWith<$Res> {
  _$TransactionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StoreInitialCopyWith<$Res> {
  factory _$$StoreInitialCopyWith(
          _$StoreInitial value, $Res Function(_$StoreInitial) then) =
      __$$StoreInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoreInitialCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$StoreInitial>
    implements _$$StoreInitialCopyWith<$Res> {
  __$$StoreInitialCopyWithImpl(
      _$StoreInitial _value, $Res Function(_$StoreInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoreInitial extends StoreInitial {
  const _$StoreInitial() : super._();

  @override
  String toString() {
    return 'TransactionsState.storeInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoreInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storeInitial,
    required TResult Function() storeLoading,
    required TResult Function() storeSuccess,
    required TResult Function() storeFailure,
    required TResult Function() fetchInitial,
    required TResult Function() fetchLoading,
    required TResult Function(Map<String, TransactionModel> transactionsMap)
        fetchSuccess,
    required TResult Function() fetchFailure,
  }) {
    return storeInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? storeInitial,
    TResult? Function()? storeLoading,
    TResult? Function()? storeSuccess,
    TResult? Function()? storeFailure,
    TResult? Function()? fetchInitial,
    TResult? Function()? fetchLoading,
    TResult? Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult? Function()? fetchFailure,
  }) {
    return storeInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storeInitial,
    TResult Function()? storeLoading,
    TResult Function()? storeSuccess,
    TResult Function()? storeFailure,
    TResult Function()? fetchInitial,
    TResult Function()? fetchLoading,
    TResult Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult Function()? fetchFailure,
    required TResult orElse(),
  }) {
    if (storeInitial != null) {
      return storeInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreInitial value) storeInitial,
    required TResult Function(StoreLoading value) storeLoading,
    required TResult Function(StoreSuccess value) storeSuccess,
    required TResult Function(StoreFailure value) storeFailure,
    required TResult Function(FetchInitial value) fetchInitial,
    required TResult Function(FetchLoading value) fetchLoading,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchFailure value) fetchFailure,
  }) {
    return storeInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreInitial value)? storeInitial,
    TResult? Function(StoreLoading value)? storeLoading,
    TResult? Function(StoreSuccess value)? storeSuccess,
    TResult? Function(StoreFailure value)? storeFailure,
    TResult? Function(FetchInitial value)? fetchInitial,
    TResult? Function(FetchLoading value)? fetchLoading,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchFailure value)? fetchFailure,
  }) {
    return storeInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreInitial value)? storeInitial,
    TResult Function(StoreLoading value)? storeLoading,
    TResult Function(StoreSuccess value)? storeSuccess,
    TResult Function(StoreFailure value)? storeFailure,
    TResult Function(FetchInitial value)? fetchInitial,
    TResult Function(FetchLoading value)? fetchLoading,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (storeInitial != null) {
      return storeInitial(this);
    }
    return orElse();
  }
}

abstract class StoreInitial extends TransactionsState {
  const factory StoreInitial() = _$StoreInitial;
  const StoreInitial._() : super._();
}

/// @nodoc
abstract class _$$StoreLoadingCopyWith<$Res> {
  factory _$$StoreLoadingCopyWith(
          _$StoreLoading value, $Res Function(_$StoreLoading) then) =
      __$$StoreLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoreLoadingCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$StoreLoading>
    implements _$$StoreLoadingCopyWith<$Res> {
  __$$StoreLoadingCopyWithImpl(
      _$StoreLoading _value, $Res Function(_$StoreLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoreLoading extends StoreLoading {
  const _$StoreLoading() : super._();

  @override
  String toString() {
    return 'TransactionsState.storeLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoreLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storeInitial,
    required TResult Function() storeLoading,
    required TResult Function() storeSuccess,
    required TResult Function() storeFailure,
    required TResult Function() fetchInitial,
    required TResult Function() fetchLoading,
    required TResult Function(Map<String, TransactionModel> transactionsMap)
        fetchSuccess,
    required TResult Function() fetchFailure,
  }) {
    return storeLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? storeInitial,
    TResult? Function()? storeLoading,
    TResult? Function()? storeSuccess,
    TResult? Function()? storeFailure,
    TResult? Function()? fetchInitial,
    TResult? Function()? fetchLoading,
    TResult? Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult? Function()? fetchFailure,
  }) {
    return storeLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storeInitial,
    TResult Function()? storeLoading,
    TResult Function()? storeSuccess,
    TResult Function()? storeFailure,
    TResult Function()? fetchInitial,
    TResult Function()? fetchLoading,
    TResult Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult Function()? fetchFailure,
    required TResult orElse(),
  }) {
    if (storeLoading != null) {
      return storeLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreInitial value) storeInitial,
    required TResult Function(StoreLoading value) storeLoading,
    required TResult Function(StoreSuccess value) storeSuccess,
    required TResult Function(StoreFailure value) storeFailure,
    required TResult Function(FetchInitial value) fetchInitial,
    required TResult Function(FetchLoading value) fetchLoading,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchFailure value) fetchFailure,
  }) {
    return storeLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreInitial value)? storeInitial,
    TResult? Function(StoreLoading value)? storeLoading,
    TResult? Function(StoreSuccess value)? storeSuccess,
    TResult? Function(StoreFailure value)? storeFailure,
    TResult? Function(FetchInitial value)? fetchInitial,
    TResult? Function(FetchLoading value)? fetchLoading,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchFailure value)? fetchFailure,
  }) {
    return storeLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreInitial value)? storeInitial,
    TResult Function(StoreLoading value)? storeLoading,
    TResult Function(StoreSuccess value)? storeSuccess,
    TResult Function(StoreFailure value)? storeFailure,
    TResult Function(FetchInitial value)? fetchInitial,
    TResult Function(FetchLoading value)? fetchLoading,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (storeLoading != null) {
      return storeLoading(this);
    }
    return orElse();
  }
}

abstract class StoreLoading extends TransactionsState {
  const factory StoreLoading() = _$StoreLoading;
  const StoreLoading._() : super._();
}

/// @nodoc
abstract class _$$StoreSuccessCopyWith<$Res> {
  factory _$$StoreSuccessCopyWith(
          _$StoreSuccess value, $Res Function(_$StoreSuccess) then) =
      __$$StoreSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoreSuccessCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$StoreSuccess>
    implements _$$StoreSuccessCopyWith<$Res> {
  __$$StoreSuccessCopyWithImpl(
      _$StoreSuccess _value, $Res Function(_$StoreSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoreSuccess extends StoreSuccess {
  const _$StoreSuccess() : super._();

  @override
  String toString() {
    return 'TransactionsState.storeSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoreSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storeInitial,
    required TResult Function() storeLoading,
    required TResult Function() storeSuccess,
    required TResult Function() storeFailure,
    required TResult Function() fetchInitial,
    required TResult Function() fetchLoading,
    required TResult Function(Map<String, TransactionModel> transactionsMap)
        fetchSuccess,
    required TResult Function() fetchFailure,
  }) {
    return storeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? storeInitial,
    TResult? Function()? storeLoading,
    TResult? Function()? storeSuccess,
    TResult? Function()? storeFailure,
    TResult? Function()? fetchInitial,
    TResult? Function()? fetchLoading,
    TResult? Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult? Function()? fetchFailure,
  }) {
    return storeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storeInitial,
    TResult Function()? storeLoading,
    TResult Function()? storeSuccess,
    TResult Function()? storeFailure,
    TResult Function()? fetchInitial,
    TResult Function()? fetchLoading,
    TResult Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult Function()? fetchFailure,
    required TResult orElse(),
  }) {
    if (storeSuccess != null) {
      return storeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreInitial value) storeInitial,
    required TResult Function(StoreLoading value) storeLoading,
    required TResult Function(StoreSuccess value) storeSuccess,
    required TResult Function(StoreFailure value) storeFailure,
    required TResult Function(FetchInitial value) fetchInitial,
    required TResult Function(FetchLoading value) fetchLoading,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchFailure value) fetchFailure,
  }) {
    return storeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreInitial value)? storeInitial,
    TResult? Function(StoreLoading value)? storeLoading,
    TResult? Function(StoreSuccess value)? storeSuccess,
    TResult? Function(StoreFailure value)? storeFailure,
    TResult? Function(FetchInitial value)? fetchInitial,
    TResult? Function(FetchLoading value)? fetchLoading,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchFailure value)? fetchFailure,
  }) {
    return storeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreInitial value)? storeInitial,
    TResult Function(StoreLoading value)? storeLoading,
    TResult Function(StoreSuccess value)? storeSuccess,
    TResult Function(StoreFailure value)? storeFailure,
    TResult Function(FetchInitial value)? fetchInitial,
    TResult Function(FetchLoading value)? fetchLoading,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (storeSuccess != null) {
      return storeSuccess(this);
    }
    return orElse();
  }
}

abstract class StoreSuccess extends TransactionsState {
  const factory StoreSuccess() = _$StoreSuccess;
  const StoreSuccess._() : super._();
}

/// @nodoc
abstract class _$$StoreFailureCopyWith<$Res> {
  factory _$$StoreFailureCopyWith(
          _$StoreFailure value, $Res Function(_$StoreFailure) then) =
      __$$StoreFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoreFailureCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$StoreFailure>
    implements _$$StoreFailureCopyWith<$Res> {
  __$$StoreFailureCopyWithImpl(
      _$StoreFailure _value, $Res Function(_$StoreFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoreFailure extends StoreFailure {
  const _$StoreFailure() : super._();

  @override
  String toString() {
    return 'TransactionsState.storeFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoreFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storeInitial,
    required TResult Function() storeLoading,
    required TResult Function() storeSuccess,
    required TResult Function() storeFailure,
    required TResult Function() fetchInitial,
    required TResult Function() fetchLoading,
    required TResult Function(Map<String, TransactionModel> transactionsMap)
        fetchSuccess,
    required TResult Function() fetchFailure,
  }) {
    return storeFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? storeInitial,
    TResult? Function()? storeLoading,
    TResult? Function()? storeSuccess,
    TResult? Function()? storeFailure,
    TResult? Function()? fetchInitial,
    TResult? Function()? fetchLoading,
    TResult? Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult? Function()? fetchFailure,
  }) {
    return storeFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storeInitial,
    TResult Function()? storeLoading,
    TResult Function()? storeSuccess,
    TResult Function()? storeFailure,
    TResult Function()? fetchInitial,
    TResult Function()? fetchLoading,
    TResult Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult Function()? fetchFailure,
    required TResult orElse(),
  }) {
    if (storeFailure != null) {
      return storeFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreInitial value) storeInitial,
    required TResult Function(StoreLoading value) storeLoading,
    required TResult Function(StoreSuccess value) storeSuccess,
    required TResult Function(StoreFailure value) storeFailure,
    required TResult Function(FetchInitial value) fetchInitial,
    required TResult Function(FetchLoading value) fetchLoading,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchFailure value) fetchFailure,
  }) {
    return storeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreInitial value)? storeInitial,
    TResult? Function(StoreLoading value)? storeLoading,
    TResult? Function(StoreSuccess value)? storeSuccess,
    TResult? Function(StoreFailure value)? storeFailure,
    TResult? Function(FetchInitial value)? fetchInitial,
    TResult? Function(FetchLoading value)? fetchLoading,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchFailure value)? fetchFailure,
  }) {
    return storeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreInitial value)? storeInitial,
    TResult Function(StoreLoading value)? storeLoading,
    TResult Function(StoreSuccess value)? storeSuccess,
    TResult Function(StoreFailure value)? storeFailure,
    TResult Function(FetchInitial value)? fetchInitial,
    TResult Function(FetchLoading value)? fetchLoading,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (storeFailure != null) {
      return storeFailure(this);
    }
    return orElse();
  }
}

abstract class StoreFailure extends TransactionsState {
  const factory StoreFailure() = _$StoreFailure;
  const StoreFailure._() : super._();
}

/// @nodoc
abstract class _$$FetchInitialCopyWith<$Res> {
  factory _$$FetchInitialCopyWith(
          _$FetchInitial value, $Res Function(_$FetchInitial) then) =
      __$$FetchInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchInitialCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$FetchInitial>
    implements _$$FetchInitialCopyWith<$Res> {
  __$$FetchInitialCopyWithImpl(
      _$FetchInitial _value, $Res Function(_$FetchInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchInitial extends FetchInitial {
  const _$FetchInitial() : super._();

  @override
  String toString() {
    return 'TransactionsState.fetchInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storeInitial,
    required TResult Function() storeLoading,
    required TResult Function() storeSuccess,
    required TResult Function() storeFailure,
    required TResult Function() fetchInitial,
    required TResult Function() fetchLoading,
    required TResult Function(Map<String, TransactionModel> transactionsMap)
        fetchSuccess,
    required TResult Function() fetchFailure,
  }) {
    return fetchInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? storeInitial,
    TResult? Function()? storeLoading,
    TResult? Function()? storeSuccess,
    TResult? Function()? storeFailure,
    TResult? Function()? fetchInitial,
    TResult? Function()? fetchLoading,
    TResult? Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult? Function()? fetchFailure,
  }) {
    return fetchInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storeInitial,
    TResult Function()? storeLoading,
    TResult Function()? storeSuccess,
    TResult Function()? storeFailure,
    TResult Function()? fetchInitial,
    TResult Function()? fetchLoading,
    TResult Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult Function()? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchInitial != null) {
      return fetchInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreInitial value) storeInitial,
    required TResult Function(StoreLoading value) storeLoading,
    required TResult Function(StoreSuccess value) storeSuccess,
    required TResult Function(StoreFailure value) storeFailure,
    required TResult Function(FetchInitial value) fetchInitial,
    required TResult Function(FetchLoading value) fetchLoading,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchFailure value) fetchFailure,
  }) {
    return fetchInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreInitial value)? storeInitial,
    TResult? Function(StoreLoading value)? storeLoading,
    TResult? Function(StoreSuccess value)? storeSuccess,
    TResult? Function(StoreFailure value)? storeFailure,
    TResult? Function(FetchInitial value)? fetchInitial,
    TResult? Function(FetchLoading value)? fetchLoading,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchFailure value)? fetchFailure,
  }) {
    return fetchInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreInitial value)? storeInitial,
    TResult Function(StoreLoading value)? storeLoading,
    TResult Function(StoreSuccess value)? storeSuccess,
    TResult Function(StoreFailure value)? storeFailure,
    TResult Function(FetchInitial value)? fetchInitial,
    TResult Function(FetchLoading value)? fetchLoading,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchInitial != null) {
      return fetchInitial(this);
    }
    return orElse();
  }
}

abstract class FetchInitial extends TransactionsState {
  const factory FetchInitial() = _$FetchInitial;
  const FetchInitial._() : super._();
}

/// @nodoc
abstract class _$$FetchLoadingCopyWith<$Res> {
  factory _$$FetchLoadingCopyWith(
          _$FetchLoading value, $Res Function(_$FetchLoading) then) =
      __$$FetchLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchLoadingCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$FetchLoading>
    implements _$$FetchLoadingCopyWith<$Res> {
  __$$FetchLoadingCopyWithImpl(
      _$FetchLoading _value, $Res Function(_$FetchLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchLoading extends FetchLoading {
  const _$FetchLoading() : super._();

  @override
  String toString() {
    return 'TransactionsState.fetchLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storeInitial,
    required TResult Function() storeLoading,
    required TResult Function() storeSuccess,
    required TResult Function() storeFailure,
    required TResult Function() fetchInitial,
    required TResult Function() fetchLoading,
    required TResult Function(Map<String, TransactionModel> transactionsMap)
        fetchSuccess,
    required TResult Function() fetchFailure,
  }) {
    return fetchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? storeInitial,
    TResult? Function()? storeLoading,
    TResult? Function()? storeSuccess,
    TResult? Function()? storeFailure,
    TResult? Function()? fetchInitial,
    TResult? Function()? fetchLoading,
    TResult? Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult? Function()? fetchFailure,
  }) {
    return fetchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storeInitial,
    TResult Function()? storeLoading,
    TResult Function()? storeSuccess,
    TResult Function()? storeFailure,
    TResult Function()? fetchInitial,
    TResult Function()? fetchLoading,
    TResult Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult Function()? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchLoading != null) {
      return fetchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreInitial value) storeInitial,
    required TResult Function(StoreLoading value) storeLoading,
    required TResult Function(StoreSuccess value) storeSuccess,
    required TResult Function(StoreFailure value) storeFailure,
    required TResult Function(FetchInitial value) fetchInitial,
    required TResult Function(FetchLoading value) fetchLoading,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchFailure value) fetchFailure,
  }) {
    return fetchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreInitial value)? storeInitial,
    TResult? Function(StoreLoading value)? storeLoading,
    TResult? Function(StoreSuccess value)? storeSuccess,
    TResult? Function(StoreFailure value)? storeFailure,
    TResult? Function(FetchInitial value)? fetchInitial,
    TResult? Function(FetchLoading value)? fetchLoading,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchFailure value)? fetchFailure,
  }) {
    return fetchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreInitial value)? storeInitial,
    TResult Function(StoreLoading value)? storeLoading,
    TResult Function(StoreSuccess value)? storeSuccess,
    TResult Function(StoreFailure value)? storeFailure,
    TResult Function(FetchInitial value)? fetchInitial,
    TResult Function(FetchLoading value)? fetchLoading,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchLoading != null) {
      return fetchLoading(this);
    }
    return orElse();
  }
}

abstract class FetchLoading extends TransactionsState {
  const factory FetchLoading() = _$FetchLoading;
  const FetchLoading._() : super._();
}

/// @nodoc
abstract class _$$FetchSuccessCopyWith<$Res> {
  factory _$$FetchSuccessCopyWith(
          _$FetchSuccess value, $Res Function(_$FetchSuccess) then) =
      __$$FetchSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, TransactionModel> transactionsMap});
}

/// @nodoc
class __$$FetchSuccessCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$FetchSuccess>
    implements _$$FetchSuccessCopyWith<$Res> {
  __$$FetchSuccessCopyWithImpl(
      _$FetchSuccess _value, $Res Function(_$FetchSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionsMap = null,
  }) {
    return _then(_$FetchSuccess(
      transactionsMap: null == transactionsMap
          ? _value._transactionsMap
          : transactionsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, TransactionModel>,
    ));
  }
}

/// @nodoc

class _$FetchSuccess extends FetchSuccess {
  const _$FetchSuccess(
      {required final Map<String, TransactionModel> transactionsMap})
      : _transactionsMap = transactionsMap,
        super._();

  final Map<String, TransactionModel> _transactionsMap;
  @override
  Map<String, TransactionModel> get transactionsMap {
    if (_transactionsMap is EqualUnmodifiableMapView) return _transactionsMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_transactionsMap);
  }

  @override
  String toString() {
    return 'TransactionsState.fetchSuccess(transactionsMap: $transactionsMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSuccess &&
            const DeepCollectionEquality()
                .equals(other._transactionsMap, _transactionsMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transactionsMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSuccessCopyWith<_$FetchSuccess> get copyWith =>
      __$$FetchSuccessCopyWithImpl<_$FetchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storeInitial,
    required TResult Function() storeLoading,
    required TResult Function() storeSuccess,
    required TResult Function() storeFailure,
    required TResult Function() fetchInitial,
    required TResult Function() fetchLoading,
    required TResult Function(Map<String, TransactionModel> transactionsMap)
        fetchSuccess,
    required TResult Function() fetchFailure,
  }) {
    return fetchSuccess(transactionsMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? storeInitial,
    TResult? Function()? storeLoading,
    TResult? Function()? storeSuccess,
    TResult? Function()? storeFailure,
    TResult? Function()? fetchInitial,
    TResult? Function()? fetchLoading,
    TResult? Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult? Function()? fetchFailure,
  }) {
    return fetchSuccess?.call(transactionsMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storeInitial,
    TResult Function()? storeLoading,
    TResult Function()? storeSuccess,
    TResult Function()? storeFailure,
    TResult Function()? fetchInitial,
    TResult Function()? fetchLoading,
    TResult Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult Function()? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(transactionsMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreInitial value) storeInitial,
    required TResult Function(StoreLoading value) storeLoading,
    required TResult Function(StoreSuccess value) storeSuccess,
    required TResult Function(StoreFailure value) storeFailure,
    required TResult Function(FetchInitial value) fetchInitial,
    required TResult Function(FetchLoading value) fetchLoading,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchFailure value) fetchFailure,
  }) {
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreInitial value)? storeInitial,
    TResult? Function(StoreLoading value)? storeLoading,
    TResult? Function(StoreSuccess value)? storeSuccess,
    TResult? Function(StoreFailure value)? storeFailure,
    TResult? Function(FetchInitial value)? fetchInitial,
    TResult? Function(FetchLoading value)? fetchLoading,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchFailure value)? fetchFailure,
  }) {
    return fetchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreInitial value)? storeInitial,
    TResult Function(StoreLoading value)? storeLoading,
    TResult Function(StoreSuccess value)? storeSuccess,
    TResult Function(StoreFailure value)? storeFailure,
    TResult Function(FetchInitial value)? fetchInitial,
    TResult Function(FetchLoading value)? fetchLoading,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }
}

abstract class FetchSuccess extends TransactionsState {
  const factory FetchSuccess(
          {required final Map<String, TransactionModel> transactionsMap}) =
      _$FetchSuccess;
  const FetchSuccess._() : super._();

  Map<String, TransactionModel> get transactionsMap;
  @JsonKey(ignore: true)
  _$$FetchSuccessCopyWith<_$FetchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFailureCopyWith<$Res> {
  factory _$$FetchFailureCopyWith(
          _$FetchFailure value, $Res Function(_$FetchFailure) then) =
      __$$FetchFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFailureCopyWithImpl<$Res>
    extends _$TransactionsStateCopyWithImpl<$Res, _$FetchFailure>
    implements _$$FetchFailureCopyWith<$Res> {
  __$$FetchFailureCopyWithImpl(
      _$FetchFailure _value, $Res Function(_$FetchFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchFailure extends FetchFailure {
  const _$FetchFailure() : super._();

  @override
  String toString() {
    return 'TransactionsState.fetchFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() storeInitial,
    required TResult Function() storeLoading,
    required TResult Function() storeSuccess,
    required TResult Function() storeFailure,
    required TResult Function() fetchInitial,
    required TResult Function() fetchLoading,
    required TResult Function(Map<String, TransactionModel> transactionsMap)
        fetchSuccess,
    required TResult Function() fetchFailure,
  }) {
    return fetchFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? storeInitial,
    TResult? Function()? storeLoading,
    TResult? Function()? storeSuccess,
    TResult? Function()? storeFailure,
    TResult? Function()? fetchInitial,
    TResult? Function()? fetchLoading,
    TResult? Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult? Function()? fetchFailure,
  }) {
    return fetchFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? storeInitial,
    TResult Function()? storeLoading,
    TResult Function()? storeSuccess,
    TResult Function()? storeFailure,
    TResult Function()? fetchInitial,
    TResult Function()? fetchLoading,
    TResult Function(Map<String, TransactionModel> transactionsMap)?
        fetchSuccess,
    TResult Function()? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoreInitial value) storeInitial,
    required TResult Function(StoreLoading value) storeLoading,
    required TResult Function(StoreSuccess value) storeSuccess,
    required TResult Function(StoreFailure value) storeFailure,
    required TResult Function(FetchInitial value) fetchInitial,
    required TResult Function(FetchLoading value) fetchLoading,
    required TResult Function(FetchSuccess value) fetchSuccess,
    required TResult Function(FetchFailure value) fetchFailure,
  }) {
    return fetchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoreInitial value)? storeInitial,
    TResult? Function(StoreLoading value)? storeLoading,
    TResult? Function(StoreSuccess value)? storeSuccess,
    TResult? Function(StoreFailure value)? storeFailure,
    TResult? Function(FetchInitial value)? fetchInitial,
    TResult? Function(FetchLoading value)? fetchLoading,
    TResult? Function(FetchSuccess value)? fetchSuccess,
    TResult? Function(FetchFailure value)? fetchFailure,
  }) {
    return fetchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoreInitial value)? storeInitial,
    TResult Function(StoreLoading value)? storeLoading,
    TResult Function(StoreSuccess value)? storeSuccess,
    TResult Function(StoreFailure value)? storeFailure,
    TResult Function(FetchInitial value)? fetchInitial,
    TResult Function(FetchLoading value)? fetchLoading,
    TResult Function(FetchSuccess value)? fetchSuccess,
    TResult Function(FetchFailure value)? fetchFailure,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure(this);
    }
    return orElse();
  }
}

abstract class FetchFailure extends TransactionsState {
  const factory FetchFailure() = _$FetchFailure;
  const FetchFailure._() : super._();
}
