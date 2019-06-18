// Basic Material App Package
import 'package:flutter/material.dart';

// Product Manager import
import './product_manager/product_manager.dart';

// Home Page Widget
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(

      // Side drawer
      drawer: Drawer(child: Column(children: <Widget>[
        
        // Drawer upper bar
        AppBar(

          // Hide hamburger when opened
          automaticallyImplyLeading: false,

          // Drawer title
          title: Text('Menu'),
          
        ),

        // Drawer links
        ListTile(
          title: Text('Manage Products'),
          onTap: () {
            
          },
        )

      ],),),

      // Upper bar
      appBar: AppBar(
        title: Text('EasyList'),
      ),

      // Page Content
      body: ProductManager(),
      
    );
  }
}
