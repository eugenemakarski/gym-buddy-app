import 'package:json_annotation/json_annotation.dart';
part 'models.g.dart';

@JsonSerializable()
class UserData {
  final String firstName;
  final String lastName;
  final String gymId;
  final Height height;
  final Weight weight;

  UserData(
    this.height,
    this.weight, {
    this.firstName = '',
    this.lastName = '',
    this.gymId = '',
  });

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Height {
  final String unit;
  final String value;

  Height({this.unit = '', this.value = ''});

  factory Height.fromJson(Map<String, dynamic> json) => _$HeightFromJson(json);
  Map<String, dynamic> toJson() => _$HeightToJson(this);
}

@JsonSerializable()
class Weight {
  final String unit;
  final int value;

  Weight({this.unit = '', this.value = 0});

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
  Map<String, dynamic> toJson() => _$WeightToJson(this);
}

class Gym {}

class Exercise {}
