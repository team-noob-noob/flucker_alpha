import 'package:hello_world/flucker/base/ButtonsDependsOnBase.dart';
import 'package:hello_world/flucker/base/ButtonsWillComeFromBase.dart';
import 'package:hello_world/flucker/base/ShouldShowWhenBase.dart';
import 'package:json_annotation/json_annotation.dart';

part 'FieldBase.g.dart';

@JsonSerializable()
class FieldBase {
  String Type;
  String Name;
  String DisplayName;
  List<String>? Buttons;
  ShouldShowWhenBase? ShouldShowWhen;
  ButtonsWillComeFromBase? ButtonsWillComeFrom;

  FieldBase(this.Type, this.Name, this.DisplayName, this.Buttons, this.ShouldShowWhen, this.ButtonsWillComeFrom);

  factory FieldBase.fromJson(Map<String, dynamic> json) => _$FieldBaseFromJson(json);

  Map<String, dynamic> toJson() => _$FieldBaseToJson(this);
}