// Basic Material App Package
import 'package:flutter/material.dart';

// Auth Page Generator
class AuthPage extends StatefulWidget {
  
  // Auth Page State Creating
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }

}

// Auth Page State
class _AuthPageState extends State<AuthPage> {

  // Email
  String email;

  // Password
  String password;

  // Accept Terms
  bool acceptTerms = false;

  // Auth Page Page
  @override
  Widget build(BuildContext context){
    
    // Auth Page
    return Scaffold(

      // Auth Page app bar
      appBar: AppBar(

        // Auth Page title
        title: Text('Login'),

      ),

      // Auth Page Content
      body: DecoratedBox(child: Container(

        // Form Column
        child: Stack(children: <Widget>[ListView(children: <Widget>[

          // 1 Text Field - email
          Container(child: TextField(
            
            // Cursor Color
            cursorColor: Theme.of(context).primaryColor,

            // Settings 
            keyboardType: TextInputType.emailAddress,            

            // Style
            decoration: InputDecoration(

              // Label
              hintText: 'Email',
              fillColor: Theme.of(context).accentColor,

            ),
            style: TextStyle(

              // Font Size
              fontSize: 20.0,

            ),

            // Action
            onChanged: (String value) {

            },

          // Margin
          ), margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),),

          // 2 Text Field - password
          Container(child: TextField(

            // Cursor Color
            cursorColor: Theme.of(context).primaryColor,

            // Settings
            obscureText: true,
            keyboardType: TextInputType.text,

            // Style
            decoration: InputDecoration(

              // Label
              hintText: 'Password',
              fillColor: Theme.of(context).accentColor,

            ),

            // Action
            onChanged: (String value) {

            },

          // margin
          ), margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0,),),

          // Switch Accept Terms
          SwitchListTile(
            
            // Text
            title: Text('Accept Terms'),

            // Switch action
            onChanged: (bool value) {
              setState(() {
                acceptTerms = value;
              });
            },

            // Switch value
            value: acceptTerms,

          ),],),
        
        // Save Button
        Positioned(

          // Save Button
          child: RaisedButton(

            // Login Button Text
            child: Text('LOGIN'),

            // Button Style
            color: Theme.of(context).primaryColor,
            textColor: Colors.white70,

            // Login Button Action
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },

          ),

          // Fixed Position
          bottom: 12.0,
          right: 15.0,
        ),

      ],),),
      
      // Box Decoration background
      decoration: BoxDecoration(

        // Back Image
        image: DecorationImage(

          // Image
          image: AssetImage('assets/images/back.jpg'),

          // Fit
          fit: BoxFit.cover,

          // blend and opacity
          colorFilter: ColorFilter.mode(Colors.white.withOpacity(.7), BlendMode.luminosity)

        ),

        // blend and opacity  
        // backgroundBlendMode: BlendMode.softLight,
        color: Colors.white,

      ),

      ),);

  }

}