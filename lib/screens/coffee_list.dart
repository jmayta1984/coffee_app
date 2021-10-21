import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/utils/http_helper.dart';
import 'package:flutter/material.dart';

class CoffeeList extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  CoffeeList({Key? key}) : super(key: key);

  @override
  _CoffeeListState createState() => _CoffeeListState();
}

class _CoffeeListState extends State<CoffeeList> {
  late HttpHelper httpHelper;
  late List coffees;

  @override
  void initState() {
    coffees = [];
    fetchCoffees();
    httpHelper = HttpHelper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: coffees.length,
        itemBuilder: (context, index) {
          return CoffeeRow(coffee: coffees[index]);
        });
  }

  void fetchCoffees() {
    httpHelper.fetchCoffees().then((value) {
      setState(() {
        coffees = value;
      });
    });
  }
}

class CoffeeRow extends StatelessWidget {
  final Coffee coffee;
  const CoffeeRow({Key? key, required this.coffee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(coffee.poster),
          Text(coffee.name),
        ],
      ),
    );
  }
}
