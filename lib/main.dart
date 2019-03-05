import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Easy list'),
        ),
        body: ProductManager('Food Tester'),
      ),
    );
  }
}
