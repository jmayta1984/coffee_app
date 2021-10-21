// ignore_for_file: prefer_const_constructors

import 'package:coffee_app/screens/coffee_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
        centerTitle: true,
      ),
      body: CoffeeList(),
    );
  }
}
