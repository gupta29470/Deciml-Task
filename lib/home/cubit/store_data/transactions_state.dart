part of 'transactions_cubit.dart';

@freezed
class TransactionsState with _$TransactionsState {
  const TransactionsState._();

  const factory TransactionsState.storeInitial() = StoreInitial;
  const factory TransactionsState.storeLoading() = StoreLoading;
  const factory TransactionsState.storeSuccess() = StoreSuccess;
  const factory TransactionsState.storeFailure() = StoreFailure;

  const factory TransactionsState.fetchInitial() = FetchInitial;
  const factory TransactionsState.fetchLoading() = FetchLoading;
  const factory TransactionsState.fetchSuccess({
    required Map<String, TransactionModel> transactionsMap,
  }) = FetchSuccess;
  const factory TransactionsState.fetchFailure() = FetchFailure;

  bool get isStoreInitial => this is StoreInitial;
  bool get isStoreLoading => this is StoreLoading;
  bool get isStoreSuccess => this is StoreSuccess;
  bool get isStoreFailure => this is StoreFailure;

  bool get isFetchInitial => this is FetchInitial;
  bool get isFetchLoading => this is FetchLoading;
  bool get isFetchSuccess => this is FetchSuccess;
  bool get isFetchFailure => this is FetchFailure;
}
