import '../shared/utils.dart';

class Entry {
  final String category;
  final String description;
  final DateTime entryDate;
  final String id;
  final String inOut;
  final bool isPayed;
  final String paymentMethod;
  final String type;
  final double value;

  const Entry({
    required this.entryDate,
    this.category = '',
    this.description = '',
    this.id = '',
    this.inOut = '',
    this.isPayed = false,
    this.paymentMethod = '',
    this.type = '',
    this.value = 0.0,
  });

  Entry copyWith(Map<String, dynamic> map) {
    return Entry(
      category: map['category'] ?? category,
      description: map['description'] ?? description,
      entryDate: map['entryDate'] ?? entryDate ?? DateTime.now(),
      id: map['id'] ?? id,
      inOut: map['inOut'] ?? inOut,
      isPayed: map['isPayed'] ?? isPayed,
      paymentMethod: map['paymentMethod'] ?? paymentMethod,
      type: map['type'] ?? type,
      value: double.tryParse(map['value'].toString()) ?? value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'category': category,
      'description': description,
      'entryDate': entryDate.toIso8601String(),
      'id': id,
      'inOut': inOut,
      'isPayed': isPayed,
      'paymentMethod': paymentMethod,
      'type': type,
      'value': value,
    };
  }

  factory Entry.fromDynamic(dynamic source) => source is Entry
      ? source
      : Entry(entryDate: DateTime.now()).copyWith(fromDynamic(source));
}
