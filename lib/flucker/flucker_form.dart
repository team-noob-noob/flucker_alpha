import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/flucker/parsing.dart';

class FluckerForm extends StatefulWidget {
  const FluckerForm({super.key, required this.formJson});

  final String formJson;

  @override
  State<StatefulWidget> createState() => _FluckerFormState();
}

class _FluckerFormState extends State<FluckerForm> {
  List<Widget> _widgets = <Widget>[];

  @override
  Widget build(BuildContext context) {
    var unprocessedFields = mapFormJsonToFieldBase(widget.formJson);
    var processedFields = mapFieldBaseToBaseField(unprocessedFields);
    _widgets = mapBaseFieldToWidgets(processedFields);

    return Scaffold(
      body: Column(
        children: _widgets,
      ),
    );
  }
}
