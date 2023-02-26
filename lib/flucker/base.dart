
import 'package:json_annotation/json_annotation.dart';

part 'base.g.dart';

@JsonSerializable()
class FieldBase {

  @JsonKey(name: 'Type')
  String type;

  @JsonKey(name: 'Name')
  String name;

  @JsonKey(name: 'DisplayName')
  String displayName;

  @JsonKey(name: 'Buttons')
  List<String>? buttons;

  @JsonKey(name: 'ShouldShowWhen')
  ShouldShowWhenBase? shouldShowWhen;

  @JsonKey(name: 'ButtonsWillComeFrom')
  ButtonsWillComeFromBase? buttonsWillComeFrom;

  FieldBase(this.type, this.name, this.displayName, this.buttons, this.shouldShowWhen, this.buttonsWillComeFrom);

  factory FieldBase.fromJson(Map<String, dynamic> json) => _$FieldBaseFromJson(json);

  Map<String, dynamic> toJson() => _$FieldBaseToJson(this);
}

@JsonSerializable()
class ButtonsDependsOnBase {
  @JsonKey(name: 'Name')
  String name;

  @JsonKey(name: 'Buttons')
  List<ValueButtonBase> buttons;

  ButtonsDependsOnBase(this.name, this.buttons);

  factory ButtonsDependsOnBase.fromJson(Map<String, dynamic> json) => _$ButtonsDependsOnBaseFromJson(json);

  Map<String, dynamic> toJson() => _$ButtonsDependsOnBaseToJson(this);
}

@JsonSerializable()
class ShouldShowWhenBase {
  @JsonKey(name: 'Name')
  String name;

  @JsonKey(name: 'Value')
  String value;

  ShouldShowWhenBase(this.name, this.value);

  factory ShouldShowWhenBase.fromJson(Map<String, dynamic> json) => _$ShouldShowWhenBaseFromJson(json);

  Map<String, dynamic> toJson() => _$ShouldShowWhenBaseToJson(this);
}

@JsonSerializable()
class ValueButtonBase {
  @JsonKey(name: 'Value')
  String value;

  @JsonKey(name: 'Buttons')
  List<String> buttons;

  ValueButtonBase(this.value, this.buttons);

  factory ValueButtonBase.fromJson(Map<String, dynamic> json) => _$ValueButtonBaseFromJson(json);

  Map<String, dynamic> toJson() => _$ValueButtonBaseToJson(this);
}

@JsonSerializable()
class ButtonsWillComeFromBase {
  @JsonKey(name: 'DependsOn')
  ButtonsDependsOnBase dependsOn;

  ButtonsWillComeFromBase(this.dependsOn);

  factory ButtonsWillComeFromBase.fromJson(Map<String, dynamic> json) => _$ButtonsWillComeFromBaseFromJson(json);

  Map<String, dynamic> toJson() => _$ButtonsWillComeFromBaseToJson(this);
}