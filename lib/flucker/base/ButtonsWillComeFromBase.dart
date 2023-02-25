
import 'package:hello_world/flucker/base/ButtonsDependsOnBase.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ButtonsWillComeFromBase.g.dart';

@JsonSerializable()
class ButtonsWillComeFromBase {
  ButtonsDependsOnBase DependsOn;

  ButtonsWillComeFromBase(this.DependsOn);

  factory ButtonsWillComeFromBase.fromJson(Map<String, dynamic> json) => _$ButtonsWillComeFromBaseFromJson(json);

  Map<String, dynamic> toJson() => _$ButtonsWillComeFromBaseToJson(this);
}