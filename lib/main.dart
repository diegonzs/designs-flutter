import 'package:custom_designs/screens/home-screen.dart';
import 'package:custom_designs/screens/scroll_screen.dart';
import 'package:custom_designs/screens/simple_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'simple_design': (_) => SimpleScreen(),
        'scroll_screen': (_) => ScrollScreen(),
        'home_screen': (_) => HomeScreen(),
      },
    );
  }
}
