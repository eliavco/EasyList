// Basic Material App Package
import 'package:flutter/material.dart';

// Importing Cards Maker and button 
import './product_manager/products.dart';
import './product_manager/product_control.dart';

// products list state
class ProductManager extends StatefulWidget {
 
  // products data set up
  final String startingProduct;
  ProductManager({this.startingProduct = 'Sweets Tester'});

  // product manager state call
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }

}

// Products State class
class _ProductManagerState extends State<ProductManager> {
  
  // data list set up
  final List<String> _products = [];

  // data initating
  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }

  // data updating if parent state changes
  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  // product add function to be provided to the cards builder
  void addProduct(){

    // State updating and rerendering
    setState(() {

      // adding a new product to the products list data
      _products.add('Advanced Food Tester');
    });
  }

  // products page builder
  @override
  Widget build(BuildContext context) {

    // products page layout
    return Column(children: [

    // 'add item' button  
    Container(

      // button content
      child: ProductControl(addProduct),

      // margin to the button
      margin: EdgeInsets.all(10),

    ),

    // Products list
    Products(_products)

    ],);
  }
}