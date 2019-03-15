import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {
    print('constructor method');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('build method');
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _buildProductItem, itemCount: products.length)
        : Center(child: Text('No product found'));
  }
}
