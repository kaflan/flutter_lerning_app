import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProduct('Sweets');
        // setState(() {
        //   _products.add('New Product');
        // });

        // print(_products);
      },
      child: Text('Add Product'),
    );
  }
}
