// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      Height.fromJson(json['height'] as Map<String, dynamic>),
      Weight.fromJson(json['weight'] as Map<String, dynamic>),
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      gymId: json['gymId'] as String? ?? '',
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
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

Gym _$GymFromJson(Map<String, dynamic> json) => Gym(
      capacity: json['capacity'] as int? ?? 0,
      description: json['description'] as String? ?? '',
      gymName: json['gymName'] as String? ?? '',
      users:
          (json['users'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [""],
      workouts: (json['workouts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [""],
    );

Map<String, dynamic> _$GymToJson(Gym instance) => <String, dynamic>{
      'capacity': instance.capacity,
      'description': instance.description,
      'gymName': instance.gymName,
      'users': instance.users,
      'workouts': instance.workouts,
    };

Workout _$WorkoutFromJson(Map<String, dynamic> json) => Workout(
      (json['exercises'] as List<dynamic>)
          .map((e) => Exercise.fromJson(e as Map<String, dynamic>))
          .toList(),
      gymId: json['gymId'] as String? ?? "",
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$WorkoutToJson(Workout instance) => <String, dynamic>{
      'gymId': instance.gymId,
      'name': instance.name,
      'exercises': instance.exercises,
    };

Exercise _$ExerciseFromJson(Map<String, dynamic> json) => Exercise(
      (json['sets'] as List<dynamic>)
          .map((e) => WorkoutSet.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$ExerciseToJson(Exercise instance) => <String, dynamic>{
      'name': instance.name,
      'sets': instance.sets,
    };

WorkoutSet _$WorkoutSetFromJson(Map<String, dynamic> json) => WorkoutSet(
      Weight.fromJson(json['weight'] as Map<String, dynamic>),
      reps: json['reps'] as int? ?? 0,
    );

Map<String, dynamic> _$WorkoutSetToJson(WorkoutSet instance) =>
    <String, dynamic>{
      'reps': instance.reps,
      'weight': instance.weight,
    };
