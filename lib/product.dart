import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {
    print('constructor method');
  }

  @override
  Widget build(BuildContext context) {
     print('build method');
    return ListView(
                children: products
                    .map(
                      (element) => Card(
                            child: Column(
                              children: <Widget>[
                                Image.asset('assets/food.jpg'),
                                Text(element)
                              ],
                            ),
                          ),
                    )
                    .toList(),
              );
  }
}
