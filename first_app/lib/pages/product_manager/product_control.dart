// Basic Material App Package
import 'package:flutter/material.dart';

// 'Add Item' Button Generator
class ProductControl extends StatelessWidget {

  // 'Add Item' Button Function Set Up
  final Function addProduct;
  ProductControl(this.addProduct);

  // Button Widget Building
  @override
  Widget build(BuildContext context) {

    // Button Widget
    return RaisedButton(

      // Color
      color: Theme.of(context).accentColor,

      // Function
      onPressed: () => addProduct({'title': 'Choocolate', 'imageUrl': 'assets/food.jpg'}),

      // Content
      child: Text('Add Item'),

    );
  }

}