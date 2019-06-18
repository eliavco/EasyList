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
        child: Text('DELETE'),

        // Button Color
        color: Theme.of(context).accentColor,

        // Button Action
        onPressed: () => Navigator.pop(context, true),

        // padding for button
      ), padding: EdgeInsets.all(10.0),),

    ],);
  }

  // Product Page Builder
  @override
  Widget build(BuildContext context) {

    // Product Detail Page
    return WillPopScope(child: Scaffold(

      // App Bar for Product Detail Page
      appBar: AppBar(

        // Product Detail Page Title
        title: Text(title),

      ),

      // Main Content
      body: bodyPage(context, title, imageUrl),

    ),
    
    // Handling back button
    onWillPop: () {
      // You can do things here before going back and if you dont add one of the following lines, you will not get back... but not both otherwise it will pop out of the root page and show a half black screen
      Navigator.pop(context, false);
      // return Future.value(false);
    },
    );

  }
}