import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'exercise.g.dart';

@JsonSerializable()
class Exercise extends Equatable {
  final String? id;
  final String? name;
  final String? imgUrl;

  const Exercise({this.id, this.name, this.imgUrl});

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
  Map<String, dynamic> toJson() => _$ExerciseToJson(this);

  @override
  List<Object?> get props => [id, name];
}
