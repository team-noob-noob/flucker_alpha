import 'dart:convert';

import 'base.dart';
import 'fields.dart';

// TODO: add checking that all fields has unique names

List<FieldBase> mapFormJsonToFieldBase(String formJson) =>
    [ for(var x in jsonDecode(formJson)) FieldBase.fromJson(x)];

List<BaseField> mapFieldBaseToBaseField(List<FieldBase> fieldBases) {
  var baseFields = <BaseField>[];

  for (var baseField in fieldBases) {
    BaseField newField;

    if (baseField.shouldShowWhen != null) {
      var dependentField = baseFields.firstWhere((e) =>
      e.name == baseField.shouldShowWhen!.name);
      var shouldShowWhen = ShouldShowWhen(
          dependentField, baseField.shouldShowWhen!.value);
      newField = baseFieldAbstractFactory(baseField, shouldShowWhen);
    } else {
      newField = baseFieldAbstractFactory(baseField);
    }

    if (newField is PickerField && baseField.buttons != null) {
      newField.buttons = baseField.buttons;
    }

    if (newField is PickerField && baseField.buttonsWillComeFrom != null) {
      var dependentField = baseFields.firstWhere((e) =>
      e.name == baseField.shouldShowWhen!.name);
      List<ValueButton> valueButtons = [
        for(var x in baseField.buttonsWillComeFrom!.dependsOn
            .buttons) ValueButton(x.value, x.buttons)
      ];
      newField = PickerField(
          newField.displayName, newField.name, newField.shouldShowWhen, null,
          ButtonsWillComeFrom(ButtonsDependsOn(dependentField, valueButtons)));
    }

    baseFields.add(newField);
  }

  return baseFields;
}

// TODO: OOP OOGA BOOGA, please help
BaseField baseFieldAbstractFactory(FieldBase field,
    [ShouldShowWhen? shouldShowWhen]) {
  switch (field.type) {
    case StringField.FieldName:
      return StringField(field.displayName, field.name, shouldShowWhen);
    case PickerField.FieldName:
      return PickerField(field.displayName, field.name, shouldShowWhen);
    case NumberField.FieldName:
      return NumberField(field.displayName, field.name, shouldShowWhen);
    default:
      throw Exception("Type doesn't exist");
  }
}