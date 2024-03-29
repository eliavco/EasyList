// Basic Material App Package
import 'package:flutter/material.dart';

// Colors Import
// import './../../tools/colors.dart';

// Leading Image
Widget leadingImage(imgUrl){
  return Container(
    child: ClipRRect(child: Image.asset(imgUrl),borderRadius: BorderRadius.circular(4.0),),
    padding: EdgeInsets.all(8.0),
    margin: EdgeInsets.only(bottom: 2.0),
    decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05),offset: Offset(7.0, 7.0),blurRadius: 5.0)]),
  );
}

// List Genrator
class Products extends StatelessWidget {
  
  // Products list data set up
  final List<Map> products;
  final Function deleteProduct;
  Products(this.products, {this.deleteProduct});

  // Indiviual Item
  Widget _buildProductItem(context, index){

    // Colors Helper
    List colorsList = [
      // Color(0xFF70C1B3),
      // Color(0xFFF3FFBD),
      Theme.of(context).accentColor,
      Theme.of(context).primaryColor,
    ];

    return Container(child: Card(

        // Backgrond Color
        color: colorsList[products.indexOf(products[index])%2].withOpacity(.4),

        // Column of Parts of the item
        child: Column(children: <Widget>[

          // Leading Image
          leadingImage(products[index]['imageUrl']),

          // Line
          Container(
            height: 3.0,
            width: 300.0,
            decoration: BoxDecoration(color: colorsList[ (products.indexOf(products[index])%2)==0 ? 1 : 0 ].withOpacity(.6) ),
          ),
          
          SizedBox(height: 15.0,),

          // Text Description
          Text(products[index]['title'],

            // Style
            style: TextStyle(
              
              // Font Size
              fontSize: 20.0,

              // Color
              color: Colors.black87,

            ),
      
          ),

          // Actions Buttons
          ButtonBar(children: <Widget>[

            // Details button
            FlatButton(
              
              // Button Text
              child: Text('DETAILS',
              
                // Style
                style: TextStyle(

                  // Font Size
                  fontSize: 14.0,

                  // Color
                  color: Colors.black87,

                ),

              ),

              // Button Color
              color: Colors.white30,

              // Details button action
              onPressed: () => Navigator.pushNamed<bool>(context,'/product/${index.toString()}').then((bool value){
                if(value){

                  // Delete Product
                  deleteProduct(index);
                }
              })

            ),

          ],
                      
          // Buttons alignment
          alignment: MainAxisAlignment.center,

          )

        ],),
      ),

      // Card Style
      decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black.withOpacity(.05),offset: Offset(7.0, 7.0),blurRadius: 5.0)]),

    );
  }


  // Product List Builder
  Widget buildProductList(){

    // Main List for every product
    return products.length > 0 ? ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    ) : Center(child: Text('No Prodcts Found'),);

    /*

    // alternative way:

    Widget productCard = Center(child: Text('No Prodcts Found'),);
    
    if (products.length > 0){
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }

    return productCard;

    */
    /*

    // third way:

    Widget productCard;

    if (products.length > 0){
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Center(child: Text('No Prodcts Found'),);
    }

    return productCard;

    */
  }

  
  // List Builder
  @override
  Widget build(BuildContext context){
    // Main List for every product
    return buildProductList();
  }
}