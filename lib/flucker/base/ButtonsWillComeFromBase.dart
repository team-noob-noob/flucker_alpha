import 'package:json_annotation/json_annotation.dart';

import 'ValueButtonBase.dart';

part 'ButtonsWillComeFromBase.g.dart';

@JsonSerializable()
class ButtonsWillComeFromBase {
  String Name;
  List<ValueButtonBase> Buttons;

  ButtonsWillComeFromBase(this.Name, this.Buttons);

  factory ButtonsWillComeFromBase.fromJson(Map<String, dynamic> json) => _$ButtonsWillComeFromBaseFromJson(json);

  Map<String, dynamic> toJson() => _$ButtonsWillComeFromBaseToJson(this);
}