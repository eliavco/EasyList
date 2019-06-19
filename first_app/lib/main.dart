// Basic Material App Package
import 'package:first_app/pages/product_admin.dart';
import 'package:flutter/material.dart';

// UI Debugger Package
    // import 'package:flutter/rendering.dart';

// Color File
import './tools/colors.dart';

// Auth page Import 
import './pages/auth.dart';

// Home Page Import
import './pages/home.dart';

// Admin Page Import
import './pages/product_admin.dart';

// Product Detail Page
import './pages/product_detail.dart';

void main() {

  // UI debugging tools enabling
      // debugPaintSizeEnabled      = true;
      // debugPaintBaselinesEnabled = true;
      // debugPaintPointersEnabled  = true;

  // Instanciate class MyApp in Emulator
  runApp(MyApp());

}

// App Configuration
class MyApp extends StatefulWidget {

  // Create state
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}

// App State
class _MyAppState extends State<MyApp> {

  // State's Products List
  final List<Map> products = [];

  // product add function to be provided to the cards builder
  void addProduct(Map product){

    // State updating and rerendering - adding a new product to the products list data
    setState(() =>  products.add(product));
  }

  // remove a product from state
  void deleteProduct(int index){
    setState(() => products.removeAt(index));
  }

  // Function returning App Widget
  @override
  Widget build(BuildContext context) {

    // App Widget
    return MaterialApp(

      // Debugging Grid 
          // debugShowMaterialGrid: true,

      // Overall style settings saved in ThemeData
      theme: ThemeData(

        // Colors
        primarySwatch: redColorCustom,
        accentColor: blueColorCustom,

        // Fonts
        fontFamily: 'Google'

      ),

      // Auth Page
      home: AuthPage(),

      // Navigation & static routes
      routes: {
        '/home': (BuildContext context) => HomePage(products, addProduct, deleteProduct),
        '/admin': (BuildContext context) => AdminPage(),
      },

      // Navigation & dynamic routes
      onGenerateRoute: (RouteSettings settings) {

        // Sections of Url
        final List<String> pathElements = settings.name.split('/');

        // Checking if Url valid
        if (pathElements[0] != '') {
          return null;
        }

        // Handling Url for Prodct Detail Page
        if (pathElements[1] == 'product') {

          // Index Retrieving
          final int index = int.parse(pathElements[2]);

          // Prodct Detail Page Returning
          return MaterialPageRoute(
            builder: (BuildContext context) => ProductPage(
              products[index]['title'], products[index]['imageUrl']
            )
          );

        }

        // Transfer to unknown route
        return null;

      },

      // 404 & unknown route
        // onUnknownRoute: ,

    );
  }

}