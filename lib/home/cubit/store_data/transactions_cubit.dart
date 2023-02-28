import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pseudo_deciml/common/app_utils.dart';
import 'package:pseudo_deciml/network/paths.dart';
import 'package:pseudo_deciml/transaction/models/transaction_model.dart';

part 'transactions_state.dart';
part 'transactions_cubit.freezed.dart';

class TransactionsCubit extends Cubit<TransactionsState> {
  TransactionsCubit()
      : super(
          const TransactionsState.storeInitial(),
        );

  final FirebaseFirestore _instance = FirebaseFirestore.instance;

  Future<void> sendDataToFirestore({
    required Map<String, dynamic> data,
    required String? userUid,
  }) async {
    emit(const TransactionsState.storeLoading());

    try {
      DocumentReference<Map<String, dynamic>> documentReference =
          _instance.doc(Paths.storeTransactionPath(
        userUid: userUid,
      ));

      DocumentSnapshot? snapshot = await documentReference.get();

      Map<String, dynamic>? firebaseData =
          snapshot.data() as Map<String, dynamic>?;

      if (firebaseData != null && firebaseData.isNotEmpty) {
        firebaseData[Paths.transactions].add(data);

        documentReference.set(firebaseData);
      } else {
        documentReference.set({
          "doc_date": AppUtils.storeDocumentId,
          Paths.transactions: [data],
        });
      }

      emit(
        const TransactionsState.storeSuccess(),
      );
    } catch (error) {
      emit(const TransactionsState.storeFailure());
    }
  }

  void getTransactionData({required String? userUid}) async {
    emit(const TransactionsState.fetchLoading());

    try {
      final CollectionReference<Map<String, dynamic>> collectionReference =
          _instance.collection(
        Paths.fetchMonthlyTransaction(
          userUid: userUid,
        ),
      );

      Query<Map<String, dynamic>> orderBy = collectionReference.orderBy(
        "doc_date",
        descending: true,
      );

      final Stream<QuerySnapshot<Map<String, dynamic>>> querySnapshot =
          orderBy.snapshots();

      Map<String, TransactionModel> transactionsMap = {};

      querySnapshot.listen((event) {
        for (QueryDocumentSnapshot<Map<String, dynamic>> doc in event.docs) {
          transactionsMap[doc.id] = TransactionModel.fromJson(
            doc.data(),
          );
        }
        emit(
          TransactionsState.fetchSuccess(
            transactionsMap: transactionsMap,
          ),
        );
      });
    } catch (error) {
      emit(const TransactionsState.fetchFailure());
    }
  }
}
