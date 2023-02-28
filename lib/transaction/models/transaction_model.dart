import 'package:pseudo_deciml/home/models/roundup_model.dart';

class TransactionModel {
/*
{
  
  "transactions": [
    {
      "roundup_spent": 21,
      "roundup_config": 21,
      "transaction_type": "Credit",
      "category": "Food",
      "amount_spent": 21
    }
  ]
} 
*/

  List<RoundupModel?>? transactions;
  int? totalRoundup;

  TransactionModel({
    this.transactions,
    this.totalRoundup = 0,
  });

  TransactionModel.fromJson(Map<String, dynamic> json) {
    if (json['transactions'] != null) {
      final v = json['transactions'];
      final arr0 = <RoundupModel>[];
      v.forEach((v) {
        RoundupModel model = RoundupModel.fromJson(v);
        arr0.add(model);
        totalRoundup = (totalRoundup ?? 0) + (model.roundupSpent ?? 0);
      });
      transactions = arr0.reversed.toList();
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (transactions != null) {
      final v = transactions;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data['transactions'] = arr0;
    }
    return data;
  }
}
