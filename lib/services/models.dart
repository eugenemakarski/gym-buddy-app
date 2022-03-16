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

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
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

@JsonSerializable()
class Gym {
  final int capacity;
  final String description;
  final String gymName;
  final List<String> users;
  final List<String> workouts;

  Gym({
    this.capacity = 0,
    this.description = '',
    this.gymName = '',
    this.users = const [""],
    this.workouts = const [""],
  });

  factory Gym.fromJson(Map<String, dynamic> json) => _$GymFromJson(json);
  Map<String, dynamic> toJson() => _$GymToJson(this);
}

@JsonSerializable()
class Workout {
  final String gymId;
  final String name;
  final List<Exercise> exercises;

  Workout(this.exercises, {this.gymId = "", this.name = ""});

  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);
  Map<String, dynamic> toJson() => _$WorkoutToJson(this);
}

@JsonSerializable()
class Exercise {
  final String name;
  final List<WorkoutSet> sets;

  Exercise(this.sets, {this.name = ""});

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
  Map<String, dynamic> toJson() => _$ExerciseToJson(this);
}

@JsonSerializable()
class WorkoutSet {
  final int reps;
  final Weight weight;

  WorkoutSet(
    this.weight, {
    this.reps = 0,
  });

  factory WorkoutSet.fromJson(Map<String, dynamic> json) =>
      _$WorkoutSetFromJson(json);
  Map<String, dynamic> toJson() => _$WorkoutSetToJson(this);
}
