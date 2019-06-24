// Basic Material App Package
import 'package:flutter/material.dart';

// Summary Text
Widget sumText(productName, productDescription, price){
  return RichText(

    // Alignment
    textAlign: TextAlign.justify,
    
    // Whole Text divided to parts
    text: TextSpan(
      
      // Styling
      style: TextStyle(

        // Font Size
        fontSize: 18.0,

        // Text Color
        color: Colors.black,

      ),

      children: [

      TextSpan(

        // First Text Part
        text: 'The product you are about to create will be called ',

      ),

      TextSpan(

        // Second Text Part
        text: '${productName[0].toUpperCase()}${productName.substring(1)}',

        // Styling
        style: TextStyle(

          // Weight
          fontWeight: FontWeight.bold,

        ),

      ),

      TextSpan(

        // Third Text Part
        text: ': ',

      ),

      TextSpan(

        // Fourth Text Part
        text: '$productDescription',

        // Styling
        style: TextStyle(

          // Weight
          fontWeight: FontWeight.bold,

        ),

      ),

      TextSpan(

        // Fifth Text Part
        text: ', and will cost ',

      ),

      TextSpan(

        // Sixth Text Part
        text: '${price.toString()}',

        // Styling
        style: TextStyle(

          // Weight
          fontWeight: FontWeight.bold,

        ),

      ),

      TextSpan(

        // Seventh Text Part
        text: '\$',

      ),

    ],)

  );
}

// Create Product Generator
class ProductCreatePage extends StatefulWidget {
  
  // Add Function
  final Function addProduct;
  ProductCreatePage(this.addProduct);

  // Create Product State Creating
  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }

}

// Create Product State
class _ProductCreatePageState extends State<ProductCreatePage> {

  // Product Name
  String productName = 'example';

  // Product Description
  String productDescription = 'A simple tool for doing things';

  // Product Price
  double price = 10.0;

  // Create Product Page
  @override
  Widget build(BuildContext context){
    
    // Create Product
    return Container(

      // Form Column
      child: Stack(children: <Widget>[ListView(children: <Widget>[

        // 1 Text Field - name
        Container(child: TextField(
          
          // Cursor Color
          cursorColor: Theme.of(context).primaryColor,

          // Settings 
          autofocus: true,

          // Style
          decoration: InputDecoration(

            // Label
            labelText: 'Product Title',
            fillColor: Theme.of(context).accentColor,

          ),
          style: TextStyle(

            // Font Size
            fontSize: 20.0,

          ),

          // Action
          onChanged: (String value) {

            // Product Name Updating
            setState(() {
              // Capitalizing
              productName = value; 
            });
          },

        // Margin
        ), margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),),

        // 2 Text Field - description
        Container(child: TextField(

          // Cursor Color
          cursorColor: Theme.of(context).primaryColor,

          // Settings
          maxLines: 4,

          // Style
          decoration: InputDecoration(

            // Label
            labelText: 'Product Description',
            fillColor: Theme.of(context).accentColor,

            // Go on top
            alignLabelWithHint: true,

          ),

          // Action
          onChanged: (String value) {

            // Product Description Updating
            setState(() {
             productDescription = value; 
            });
          },

        // margin
        ), margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0,),),

        // 3 Text Field - price
        Container(child: TextField(

          // Cursor Color
          cursorColor: Theme.of(context).primaryColor,

          // Settings
          keyboardType: TextInputType.number,

          // Style
          decoration: InputDecoration(

            // Label
            labelText: 'Product Price (\$)',
            fillColor: Theme.of(context).accentColor,

          ),

          textAlign: TextAlign.center,

          // Action
          onChanged: (String value) {

            // Product Price Updating
            setState(() {
             price = double.parse(value); 
            });
          },

        // Margin
        ), margin: EdgeInsets.fromLTRB(140.0, 0.0, 140.0, 10.0,),),

        // Summary Text and margin
        Container(child: sumText(productName, productDescription, price), margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),),

      ],),
      
      // Save Button
      Positioned(

        // Save Button
        child: RaisedButton(
          
          // Button Text
          child: Text('SAVE'),

          // Button Style
          color: Theme.of(context).primaryColor,
          textColor: Colors.white70,
          
          // Button Action
          onPressed: () {

            // Product Shaping
            final Map product = {
           
              // Title
              'title'       : productName,

              // Description
              'description' : productDescription,

              // Price
              'price'       : price,

              // Image
              'imageUrl'    : 'assets/images/food.jpg',
              
            };

            // Product adding
            widget.addProduct(product);

            // Geting back to home page
            Navigator.pushReplacementNamed(context, '/home');

          },
          
        ),

        // Fixed Position
        bottom: 12.0,
        right: 15.0,
      ),

    ],),);


    /*

    return Center(

      // Button for prompting modal
      child: RaisedButton(

        // Text on Button for prompting modal
        child: Text('Create a Product! Save!'),

        // Button for prompting modal action
        onPressed: () {

          // Open a modal
          showModalBottomSheet(context: context,

            // Modal content
            builder: (BuildContext context) {
              
              // Modal Content
              return Center(

                // Modal title
                child: Text('Create a Product!'),
              );
            }
          );
        },
      )
    );

    */
  }

}