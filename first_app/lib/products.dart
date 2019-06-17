import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  
  final List<String> products;

  Products([this.products = const []]);

  @override
  Widget build(BuildContext context){
    return Column(children: products.map((el) => 
      Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/food.jpg'),
            Text(el),
          ],
        ),
      ), 
    ).toList()
    ,);
  }
}