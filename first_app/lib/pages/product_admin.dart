// Basic Material App Package
import 'package:flutter/material.dart';

// Product Create And List Import
import './product_create.dart';
import './product_list.dart';

// Admin Page Widget
class AdminPage extends StatelessWidget{

  // Functions set up
  final Function addProduct;
  final Function deleteProduct;
  AdminPage(this.addProduct, this.deleteProduct);

  // Admin Page Generate
  @override
  Widget build(BuildContext context){

    // App with tabs
    return DefaultTabController(

      // Number of tabs
      length: 2,

      // Home content
      child: Scaffold(

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

          // Link 1 - All Products
          ListTile(

            // Link 1 title - All Products
            title: Text('All Products'),

            // Link 1 action
            onTap: () {

              // Go Home
              Navigator.pushReplacementNamed(context, '/home');
            },

          )

      ],),),

      // Upper bar
      appBar: AppBar(

        // Title for Home Page
        title: Text('EasyList'),

        // Bottom navBar
        bottom: TabBar(tabs: <Widget>[

          // First Tab
          Tab(
            icon: Icon(Icons.create),
            text: 'Create Product',
          ),

          // Second Tab
          Tab(
            icon: Icon(Icons.list),
            text: 'My Products',
          ),

        ],),
      ),

      // Page Content
      body: TabBarView(children: <Widget>[

        // First tab content
        ProductCreatePage(addProduct),

        // Second tab content
        ProductListPage(),
      ],),
      
    ));
  }
}
