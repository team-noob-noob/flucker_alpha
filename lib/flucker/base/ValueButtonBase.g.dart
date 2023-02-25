// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ValueButtonBase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValueButtonBase _$ValueButtonBaseFromJson(Map<String, dynamic> json) =>
    ValueButtonBase(
      json['Value'] as String,
      (json['Buttons'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ValueButtonBaseToJson(ValueButtonBase instance) =>
    <String, dynamic>{
      'Value': instance.Value,
      'Buttons': instance.Buttons,
    };
