// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ButtonsWillComeFromBase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ButtonsWillComeFromBase _$ButtonsWillComeFromBaseFromJson(
        Map<String, dynamic> json) =>
    ButtonsWillComeFromBase(
      json['Name'] as String,
      (json['Buttons'] as List<dynamic>)
          .map((e) => ValueButtonBase.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ButtonsWillComeFromBaseToJson(
        ButtonsWillComeFromBase instance) =>
    <String, dynamic>{
      'Name': instance.Name,
      'Buttons': instance.Buttons,
    };
