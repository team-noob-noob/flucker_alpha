import 'package:json_annotation/json_annotation.dart';

import 'ValueButtonBase.dart';

part 'ButtonsDependsOnBase.g.dart';

@JsonSerializable()
class ButtonsDependsOnBase {
  String Name;
  List<ValueButtonBase> Buttons;

  ButtonsDependsOnBase(this.Name, this.Buttons);

  factory ButtonsDependsOnBase.fromJson(Map<String, dynamic> json) => _$ButtonsDependsOnBaseFromJson(json);

  Map<String, dynamic> toJson() => _$ButtonsDependsOnBaseToJson(this);
}