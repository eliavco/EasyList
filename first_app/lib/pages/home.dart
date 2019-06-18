// Basic Material App Package
import 'package:flutter/material.dart';

// Product Manager import
import './product_manager/product_manager.dart';

// Home Page Widget
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(

      // Upper bar
      appBar: AppBar(
        title: Text('EasyList'),
      ),

      // Page Content
      body: ProductManager(),
      
    );
  }
}
