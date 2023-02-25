import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:hello_world/flucker/base/FieldBase.dart';

Future<String> getJson() => rootBundle.loadString("json/form.json");

Future<FieldBase> getData() async {
  List<dynamic> test = jsonDecode(await getJson());
  return FieldBase.fromJson(test[0]);
}