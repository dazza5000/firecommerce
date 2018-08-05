import 'package:flutter/material.dart';
import 'package:firecommerce/screens/login_screen.dart';
import 'package:firecommerce/blocs/provider.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider( child:
    new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new LoginScreen()
    ));
  }
}
