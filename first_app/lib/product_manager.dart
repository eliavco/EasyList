import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
 
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweets Tester'});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  
  final List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  void addProduct(){
    setState(() {
      _products.add('Advanced Food Tester');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [Container(
      child: ProductControl(addProduct),
      margin: EdgeInsets.all(10),
    ),
    Products(_products)
    ],);
  }

}