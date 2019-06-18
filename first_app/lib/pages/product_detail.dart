// Basic Material App Package
import 'package:flutter/material.dart';

// Product Page Generator
class ProductPage extends StatelessWidget{
  
  final String title;
  final String imageUrl;
  ProductPage(this.title, this.imageUrl);

  // Product Detail Body Builder
  Widget bodyPage(BuildContext context, title, imageUrl){
    return Column(children: <Widget>[

      // Image
      Image.asset(imageUrl),

      // Heading 
      Container(

        // Padding for Heading
        padding: EdgeInsets.all(10.0),

        // Heading Content
        child: Text(title),

      ),

      // Back Button
      Container(child: RaisedButton(

        // Button Text
        child: Text('BACK'),

        // Button Color
        color: Theme.of(context).accentColor,

        // Button Action
        onPressed: () => Navigator.pop(context),

        // padding for button
      ), padding: EdgeInsets.all(10.0),),

    ],);
  }

  // Product Page Builder
  @override
  Widget build(BuildContext context) {

    // Product Detail Page
    return Scaffold(

      // App Bar for Product Detail Page
      appBar: AppBar(

        // Product Detail Page Title
        title: Text(title),

      ),

      // Main Content
      body: bodyPage(context, title, imageUrl),

    );

  }
}