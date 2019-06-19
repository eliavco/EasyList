// Basic Material App Package
import 'package:flutter/material.dart';

// Auth Page Builder
class AuthPage extends StatelessWidget {

  // Auth Page Builder
  @override
  Widget build(BuildContext context) {

    // Auth Page
    return Scaffold(

      // Auth Page app bar
      appBar: AppBar(

        // Auth Page title
        title: Text('Login'),

      ),

      // Auth Page Content
      body: Center(

        // Basic login button
        child: RaisedButton(

          // Login Button Color
            // color: Theme.of(context).accentColor,

          // Login Button Text
          child: Text('Login'),

          // Login Button Action
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },

        ),
      ),
    );
  }

}