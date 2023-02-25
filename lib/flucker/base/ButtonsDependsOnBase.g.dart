// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ButtonsDependsOnBase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      'Name': instance.Name,
      'Buttons': instance.Buttons,
    };
