// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldBase _$FieldBaseFromJson(Map<String, dynamic> json) => FieldBase(
      json['Type'] as String,
      json['Name'] as String,
      json['DisplayName'] as String,
      (json['Buttons'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['ShouldShowWhen'] == null
          ? null
          : ShouldShowWhenBase.fromJson(
              json['ShouldShowWhen'] as Map<String, dynamic>),
      json['ButtonsWillComeFrom'] == null
          ? null
          : ButtonsWillComeFromBase.fromJson(
              json['ButtonsWillComeFrom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FieldBaseToJson(FieldBase instance) => <String, dynamic>{
      'Type': instance.type,
      'Name': instance.name,
      'DisplayName': instance.displayName,
      'Buttons': instance.buttons,
      'ShouldShowWhen': instance.shouldShowWhen,
      'ButtonsWillComeFrom': instance.buttonsWillComeFrom,
    };

ButtonsDependsOnBase _$ButtonsDependsOnBaseFromJson(
        Map<String, dynamic> json) =>
    ButtonsDependsOnBase(
      json['Name'] as String,
      (json['Buttons'] as List<dynamic>)
          .map((e) => ValueButtonBase.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ButtonsDependsOnBaseToJson(
        ButtonsDependsOnBase instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Buttons': instance.buttons,
    };

ShouldShowWhenBase _$ShouldShowWhenBaseFromJson(Map<String, dynamic> json) =>
    ShouldShowWhenBase(
      json['Name'] as String,
      json['Value'] as String,
    );

Map<String, dynamic> _$ShouldShowWhenBaseToJson(ShouldShowWhenBase instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Value': instance.value,
    };

ValueButtonBase _$ValueButtonBaseFromJson(Map<String, dynamic> json) =>
    ValueButtonBase(
      json['Value'] as String,
      (json['Buttons'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ValueButtonBaseToJson(ValueButtonBase instance) =>
    <String, dynamic>{
      'Value': instance.value,
      'Buttons': instance.buttons,
    };

ButtonsWillComeFromBase _$ButtonsWillComeFromBaseFromJson(
        Map<String, dynamic> json) =>
    ButtonsWillComeFromBase(
      ButtonsDependsOnBase.fromJson(json['DependsOn'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ButtonsWillComeFromBaseToJson(
        ButtonsWillComeFromBase instance) =>
    <String, dynamic>{
      'DependsOn': instance.dependsOn,
    };
