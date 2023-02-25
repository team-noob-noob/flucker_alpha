
import 'package:json_annotation/json_annotation.dart';

part 'ValueButtonBase.g.dart';

@JsonSerializable()
class ValueButtonBase {
  String Value;
  List<String> Buttons;

  ValueButtonBase(this.Value, this.Buttons);

  factory ValueButtonBase.fromJson(Map<String, dynamic> json) => _$ValueButtonBaseFromJson(json);

  Map<String, dynamic> toJson() => _$ValueButtonBaseToJson(this);
}