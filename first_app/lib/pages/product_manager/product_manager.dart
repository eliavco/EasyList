// Basic Material App Package
import 'package:flutter/material.dart';

// Importing Cards Maker and button 
import './products.dart';
// import './product_control.dart';

// products list state
class ProductManager extends StatelessWidget {

/* Deleted when state lifted and widget turned into stateless 
  // products data set up
  final Map startingProduct;
  ProductManager({this.startingProduct});

  // product manager state call
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }

}

// Products State class
class _ProductManagerState extends State<ProductManager> {
  
  // data list set up
  final List<Map> _products = [];

  // data initating
  @override
  void initState() {
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  // data updating if parent state changes
  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

*/

  // Setting Up Important data
  final List<Map> products;
  // final Function addProduct;
  // final Function deleteProduct;
  ProductManager(this.products, /* this.addProduct, this.deleteProduct */ );

  // products page builder
  @override
  Widget build(BuildContext context) {

    // products page layout
    return Column(children: [

    /*// 'add item' button  
    Container(

      // button content
      child: ProductControl(addProduct),

      // margin to the button
      margin: EdgeInsets.all(10),

    ),*/

    // Products list
    Expanded(child: SizedBox(height: 500.0, child: Products(products, /* deleteProduct: deleteProduct, */ ),),),

    ],);
  }
}