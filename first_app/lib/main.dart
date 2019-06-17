// Basic Material App Package
import 'package:flutter/material.dart';

// UI Debugger Package
    // import 'package:flutter/rendering.dart';

// Color File
import './tools/colors.dart';

// Product Manager
import './product_manager.dart';

void main() {

  // UI debugging tools enabling
      // debugPaintSizeEnabled      = true;
      // debugPaintBaselinesEnabled = true;
      // debugPaintPointersEnabled  = true;

  // Instanciate class MyApp in Emulator
  runApp(MyApp());

}

class MyApp extends StatelessWidget {

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


      ),

      // Home Page
      home: Scaffold(

        // Upper bar
        appBar: AppBar(
          title: Text('EasyList'),
        ),

        // Page Content
        body: ListView(children: [ProductManager(startingProduct: 'Food Tester')]),
        
      ),
    );
  }

}