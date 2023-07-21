import 'package:equatable/equatable.dart';

class RentalDuration extends Equatable {
  final String? unit;
  final num? count;

  const RentalDuration({this.unit, this.count});

  factory RentalDuration.fromJson(Map<String, dynamic> json) {
    return RentalDuration(
      unit: json['unit'] as String?,
      count: json['count'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'unit': unit,
        'count': count,
      };

  RentalDuration copyWith({
    String? unit,
    int? count,
  }) {
    return RentalDuration(
      unit: unit ?? this.unit,
      count: count ?? this.count,
    );
  }

  @override
  List<Object?> get props => [unit, count];
}
