// Basic Material App Package
import 'package:flutter/material.dart';

// Create Product Generator
class ProductCreatePage extends StatelessWidget {

  // Create Product Page
  @override
  Widget build(BuildContext context){
    
    // Create Product
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
  }

}