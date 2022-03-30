import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Список элементов'),
            ),
            body: ListView.builder(
              itemBuilder: (context, i) {
                int index = i ~/ 2;
                if (i.isOdd) return const Divider();
                num x = pow(2, index);
                return Text(' 2' ' ^ ' '$index' ' = ' '$x');
              },
            )));
  }
}
