import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/flucker/parsing.dart';

import 'default_dropdown_button.dart';
import 'fields.dart';

class FluckerForm extends StatefulWidget {
  const FluckerForm({super.key, required this.formJson});

  final String formJson;

  @override
  State<StatefulWidget> createState() => _FluckerFormState();
}

class _FluckerFormState extends State<FluckerForm> {
  List<BaseField> _processedFields = <BaseField>[];
  List<Widget> _widgets = <Widget>[];
  Map<String, dynamic> values = {};

  void dynamicControlOnChange(dynamic e, BaseField field, int widgetIndex) {

    print(field.name);
    setState(() {
      values[field.name] = e;
    });
  }

  // TODO: move widget instantiation in a separate classes
  List<Widget> mapBaseFieldToWidgets(List<BaseField> fields) {
    List<Widget> widgets = <Widget>[];

    for (int i = 0; i < fields.length; i++) {
      var field = fields[i];

      // Don't display field that has dependency and value doesn't match
      if (field.shouldShowWhen != null && values[field.shouldShowWhen!.field.name] == field.shouldShowWhen!.value) {
        continue;
      }

      if (field is StringField) {
        widgets.add(TextField(
          decoration: InputDecoration(
            labelText: field.displayName,
          ),
          onChanged: (text) {
            dynamicControlOnChange(text, field, i);
          },
        ));
      } else if (field is PickerField) {
        if (field.buttons != null) {
          widgets.add(DefaultDropdownButton(
            items: field.buttons!,
            onChange: (text) {
              dynamicControlOnChange(text, field, i);
            },
          ));
        } else if (field.buttonsWillComeFrom != null) {
          // TODO: implement changing buttons in dropdown
        } else {
          throw Exception(
              "PickerField ${field.name} doesn't have button source.");
        }
      } else if (field is NumberField) {
        widgets.add(TextField(
          decoration: InputDecoration(
            labelText: field.displayName,
          ),
          keyboardType: const TextInputType.numberWithOptions(),
          onChanged: (text) {
            dynamicControlOnChange(text, field, i);
          },
        ));
      }
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    var unprocessedFields = mapFormJsonToFieldBase(widget.formJson);
    _processedFields = mapFieldBaseToBaseField(unprocessedFields);
    _widgets = mapBaseFieldToWidgets(_processedFields);

    return Scaffold(
      body: Column(
        children: _widgets,
      ),
    );
  }
}
