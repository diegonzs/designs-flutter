import 'package:custom_designs/screens/scroll_screen.dart';
import 'package:custom_designs/screens/simple_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'scroll_screen',
      routes: {
        'simple_design': (_) => SimpleScreen(),
        'scroll_screen': (_) => ScrollScreen(),
      },
    );
  }
}
