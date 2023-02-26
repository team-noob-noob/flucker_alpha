
abstract class BaseField {
  String get name;
  String get displayName;
  ShouldShowWhen? get shouldShowWhen;
  dynamic value;
}

class StringField extends BaseField {
  String _displayName;
  @override
  String get displayName => _displayName;

  String _name;
  @override
  String get name => _name;

  ShouldShowWhen? _shouldShowWhen;
  @override
  ShouldShowWhen? get shouldShowWhen => _shouldShowWhen;

  static const String FieldName = 'String';

  StringField(this._displayName, this._name, [this._shouldShowWhen]);
}

class PickerField extends BaseField {
  String _displayName;
  @override
  String get displayName => _displayName;

  String _name;
  @override
  String get name => _name;

  ShouldShowWhen? _shouldShowWhen;
  @override
  ShouldShowWhen? get shouldShowWhen => _shouldShowWhen;

  List<String>? buttons;

  ButtonsWillComeFrom? buttonsWillComeFrom;

  static const String FieldName = 'Picker';

  PickerField(this._displayName, this._name, [this._shouldShowWhen, this.buttons, this.buttonsWillComeFrom]);
}

class NumberField extends BaseField {
  String _displayName;
  @override
  String get displayName => _displayName;

  String _name;
  @override
  String get name => _name;

  ShouldShowWhen? _shouldShowWhen;
  @override
  ShouldShowWhen? get shouldShowWhen => _shouldShowWhen;

  static const String FieldName = 'Number';

  NumberField(this._displayName, this._name, [this._shouldShowWhen]);
}

class ShouldShowWhen {
  dynamic value;
  BaseField field;

  ShouldShowWhen(this.field, this.value);
}

class ButtonsWillComeFrom {
  ButtonsDependsOn dependsOn;

  ButtonsWillComeFrom(this.dependsOn);
}

class ButtonsDependsOn {
  BaseField field;
  List<ValueButton> buttons;

  ButtonsDependsOn(this.field, this.buttons);
}

class ValueButton {
  dynamic value;
  List<String> buttons;

  ValueButton(this.value, this.buttons);
}
