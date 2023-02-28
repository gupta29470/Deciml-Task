class RoundupModel {
/*
{
  "roundup_config": 10,
  "transaction_type": "credit",
  "category": "Food",
  "amount_spent": 195,
  "roundup_spent": 5,
  "current_timestamp": "fff",
} 
*/

  int? roundupConfig;
  String? transactionType;
  String? category;
  int? amountSpent;
  int? roundupSpent;
  String? currentTimestamp;

  RoundupModel({
    this.roundupConfig,
    this.transactionType,
    this.category,
    this.amountSpent,
    this.roundupSpent,
    this.currentTimestamp,
  });
  RoundupModel.fromJson(Map<String, dynamic> json) {
    roundupConfig = json['roundup_config']?.toInt();
    transactionType = json['transaction_type']?.toString();
    category = json['category']?.toString();
    amountSpent = json['amount_spent']?.toInt();
    roundupSpent = json['roundup_spent']?.toInt();
    currentTimestamp = json['current_timestamp']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['roundup_config'] = roundupConfig;
    data['transaction_type'] = transactionType;
    data['category'] = category;
    data['amount_spent'] = amountSpent;
    data['roundup_spent'] = roundupSpent;
    data['current_timestamp'] = currentTimestamp;
    return data;
  }
}
