import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'history.g.dart';

@JsonSerializable()
class History extends Equatable {
  final String? id;
  final int? createdAt;
  final String? name;
  final String? message;

  const History({this.id, this.createdAt, this.name, this.message});

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);
  Map<String, dynamic> toJson() => _$HistoryToJson(this);

  @override
  List<Object?> get props => [id, createdAt, name, message];
}
