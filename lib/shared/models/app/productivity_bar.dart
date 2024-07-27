// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductivityBarModel {
  final int percentage;
  final DateTime date;
  ProductivityBarModel({
    required this.percentage,
    required this.date,
  });

  ProductivityBarModel copyWith({
    int? percentage,
    DateTime? date,
  }) {
    return ProductivityBarModel(
      percentage: percentage ?? this.percentage,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': percentage,
      'date': date.millisecondsSinceEpoch,
    };
  }

  factory ProductivityBarModel.fromMap(Map<String, dynamic> map) {
    return ProductivityBarModel(
      percentage: map['percentage'] as int,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductivityBarModel.fromJson(String source) => ProductivityBarModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ProductivityBarModel(percentage: $percentage, date: $date)';

  @override
  bool operator ==(covariant ProductivityBarModel other) {
    if (identical(this, other)) return true;

    return other.percentage == percentage && other.date == date;
  }

  @override
  int get hashCode => percentage.hashCode ^ date.hashCode;
}
