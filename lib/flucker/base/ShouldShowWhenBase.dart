
import 'package:json_annotation/json_annotation.dart';

part 'ShouldShowWhenBase.g.dart';

@JsonSerializable()
class ShouldShowWhenBase {
  String Name;
  String Value;

  ShouldShowWhenBase(this.Name, this.Value);

  factory ShouldShowWhenBase.fromJson(Map<String, dynamic> json) => _$ShouldShowWhenBaseFromJson(json);

  Map<String, dynamic> toJson() => _$ShouldShowWhenBaseToJson(this);
}