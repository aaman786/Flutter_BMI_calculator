import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/input_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: InputPage(),
      initialRoute: InputPage.id,
      routes: {
        InputPage.id: (context) => InputPage(),
      },
    );
  }
}
