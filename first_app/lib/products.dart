// Basic Material App Package
import 'package:flutter/material.dart';

// Leading Image
Widget leadingImage(imgUrl){
  return Container(
    child: ClipRRect(child: Image.asset(imgUrl),borderRadius: BorderRadius.circular(4.0),),
    padding: EdgeInsets.all(8.0),
    margin: EdgeInsets.only(bottom: 2.0),
    decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05),offset: Offset(7.0, 7.0),blurRadius: 5.0)]),
  );
}

// List Genrator
class Products extends StatelessWidget {
  
  // Products list data set up
  final List<String> products;
  Products([this.products = const []]);

  // List Builder
  @override
  Widget build(BuildContext context){

    
    // Colors Helper
    List colorsList = [
      Theme.of(context).primaryColor.withOpacity(.2),
      Theme.of(context).accentColor.withOpacity(.2),
    ];

    // Main List for every product
    return Column(children: products.map((el) => 

      // Indiviual Item
      Container(child: Card(

        // Backgrond Color
        color: colorsList[products.indexOf(el)%2],

        // Column of Parts of the item
        child: Column(children: <Widget>[

          // Leading Image
          leadingImage('assets/food.jpg'),
          
          // Text Description
          Text(el),

        ],),
      ),

      decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05),offset: Offset(7.0, 7.0),blurRadius: 5.0)]),

    // Duplicating the cards for every product 
    )).toList()

    ,);
  }
}