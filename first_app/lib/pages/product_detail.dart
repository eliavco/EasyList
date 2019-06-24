// Basic Material App Package
import 'package:flutter/material.dart';

_showWarningDialog(BuildContext context) {

// Check again if user want to delete
return showDialog(context: context,

  // Prompt Dialog
  builder: (BuildContext context) {return AlertDialog(
    
    // Dialog Title
    title: Text('Are You Sure?'),

    // Dialog Text
    content: Text('A deleted item cannot be restored...'),

    // Dialog Options
    actions: <Widget>[

      // Button 1 - discarding
      FlatButton(

        // Button 1 text
        child: Text('CANCEL'),

        // Button 1 action
        onPressed: () {

          // Close dialog
          Navigator.pop(context);

        },

        // Styling Colors
        textColor: Theme.of(context).accentColor,
        color: Theme.of(context).accentColor.withOpacity(.2),

      ),

      // Button 2 - deleting
      FlatButton(

        // Button 2 text
        child: Text('DELETE'),

        // Button 2 action
        onPressed: () {

          // Close Dialog
          Navigator.pop(context);

          // Delete the item
          Navigator.pop(context, true);

        },

        // Styling Colors
        textColor: Theme.of(context).primaryColor,

      ),

    ],

  );},

);
}

// Product Page Generator
class ProductPage extends StatelessWidget{
  
  final String title;
  final String description;
  final String imageUrl;
  ProductPage(this.title, this.description, this.imageUrl);

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
        child: Text(description),

      ),

      // Back Button
      Container(child: RaisedButton(

        // Button Text
        child: Text('DELETE'),

        // Button Color
        color: Theme.of(context).accentColor,

        // Button Action
        onPressed: () => _showWarningDialog(context),

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