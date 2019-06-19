// Basic Material App Package
import 'package:flutter/material.dart';

// Product Manager import
import './product_manager/product_manager.dart';

// Home Page Widget
class HomePage extends StatelessWidget{

  final List<Map> products;
  final Function addProduct;
  final Function deleteProduct;
  HomePage(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context){

    // App with tabs
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

          // Link 1 - Manage Products
          ListTile(

            // Link 1 title - Manage Products
            title: Text('Manage Products'),

            // Link 1 action
            onTap: () {

              // Go Admin
              Navigator.pushReplacementNamed(context, '/admin');
            },

          )

      ],),),

      // Upper bar
      appBar: AppBar(

        // Title for Home Page
        title: Text('EasyList'),

      ),

      // Page Content
      body: ProductManager(products, addProduct, deleteProduct),
      
    );
  }
}