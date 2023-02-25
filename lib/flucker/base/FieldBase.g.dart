// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FieldBase.dart';

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
      'Type': instance.Type,
      'Name': instance.Name,
      'DisplayName': instance.DisplayName,
      'Buttons': instance.Buttons,
      'ShouldShowWhen': instance.ShouldShowWhen,
      'ButtonsWillComeFrom': instance.ButtonsWillComeFrom,
    };
