import '../shared/utils.dart';

class Balance {
  final double availableBalance;
  final double blockedBalance;
  final String id;

  const Balance({
    this.availableBalance = 0.0,
    this.blockedBalance = 0.0,
    this.id = '',
  });

  Balance copyWith(Map<String, dynamic> map) {
    return Balance(
      availableBalance: map['availableBalance'] ?? availableBalance,
      blockedBalance: map['blockedBalance'] ?? blockedBalance,
      id: map['id'] ?? id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'availableBalance': availableBalance,
      'blockedBalance': blockedBalance,
      'id': id,
    };
  }

  factory Balance.fromDynamic(dynamic source) => source is Balance
      ? source
      : const Balance().copyWith(fromDynamic(source));
}
