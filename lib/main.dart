import 'package:firstapp/screen/LoginForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;

bool get isIOS => foundation.defaultTargetPlatform == TargetPlatform.iOS;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receitas de Família',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Raleway',
      ),
      home: LoginForm(),
    );
  }
}

