import 'package:flutter/material.dart';

class DefaultDropdownButton extends StatefulWidget {
  const DefaultDropdownButton({super.key, required this.items, required this.onChange});

  final List<String> items;

  final Function(String value) onChange;

  @override
  State<StatefulWidget> createState() => _DefaultDropdownButton();
}

class _DefaultDropdownButton extends State<DefaultDropdownButton> {
  String? selectedValue;

  void _onDefaultDropdownButtonChanged(String? value) {
    setState(() {
      if (value != null) {
        selectedValue = value;
        widget.onChange(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var dropdownMenuItems = [
      for (var x in widget.items) DropdownMenuItem(value: x, child: Text(x))
    ];

    return DropdownButton(
        value: selectedValue,
        items: dropdownMenuItems,
        onChanged: _onDefaultDropdownButtonChanged);
  }
}
