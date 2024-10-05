import 'package:flutter/material.dart';
import 'package:form_in_flutter/customform.dart';
import 'package:form_in_flutter/datepicker.dart';
import 'package:form_in_flutter/timepicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DatePickerDemo(),
    );
  }
}