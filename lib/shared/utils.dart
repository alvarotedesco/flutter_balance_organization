import 'dart:convert';

abstract class Utils {
  static Map<String, dynamic> fromDynamic(dynamic source) {
    if (source is Map) {
      return Map<String, dynamic>.from(source);
    }

    if (source is String) {
      return Utils.fromDynamic(jsonDecode(source));
    }

    return const {};
  }
}
