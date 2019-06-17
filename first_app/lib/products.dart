// Basic Material App Package
import 'package:flutter/material.dart';

// List Genrator
class Products extends StatelessWidget {
  
  // Products list data set up
  final List<String> products;
  Products([this.products = const []]);

  // List Builder
  @override
  Widget build(BuildContext context){

    // Main List for every product
    return Column(children: products.map((el) => 

      // Indiviual Item
      Card(

        // Column of Parts of the item
        child: Column(children: <Widget>[

          // Leading Image
          Image.asset('assets/food.jpg'),
          
          // Text Description
          Text(el),

        ],),
      ),

    // Duplicating the cards for every product 
    ).toList()
    
    ,);
  }
}