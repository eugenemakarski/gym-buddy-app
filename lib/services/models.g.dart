// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserFromJson(Map<String, dynamic> json) => UserData(
      Height.fromJson(json['height'] as Map<String, dynamic>),
      Weight.fromJson(json['weight'] as Map<String, dynamic>),
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      gymId: json['gymId'] as String? ?? '',
    );

Map<String, dynamic> _$UserToJson(UserData instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gymId': instance.gymId,
      'height': instance.height,
      'weight': instance.weight,
    };

Height _$HeightFromJson(Map<String, dynamic> json) => Height(
      unit: json['unit'] as String? ?? '',
      value: json['value'] as String? ?? '',
    );

Map<String, dynamic> _$HeightToJson(Height instance) => <String, dynamic>{
      'unit': instance.unit,
      'value': instance.value,
    };

Weight _$WeightFromJson(Map<String, dynamic> json) => Weight(
      unit: json['unit'] as String? ?? '',
      value: json['value'] as int? ?? 0,
    );

Map<String, dynamic> _$WeightToJson(Weight instance) => <String, dynamic>{
      'unit': instance.unit,
      'value': instance.value,
    };
