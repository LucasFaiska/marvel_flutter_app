import 'package:flutter/material.dart';
import 'package:marvel_flutter_app/src/features/splash/splash_page.dart';

void main() => runApp(MarvelApp());

class MarvelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marvel Flutter App',
      theme: ThemeData(
        primaryColor: Color(0xffED1D24),
      ),
      home: SplashPage()     
    );
  }
}