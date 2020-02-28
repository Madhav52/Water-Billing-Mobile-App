import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/screens/customer/update_profile.dart';
import 'package:flutter_login_page_ui/screens/customer/view_profile.dart';
import 'package:flutter_login_page_ui/screens/login.dart';
import 'package:flutter_login_page_ui/screens/home.dart';


var routes = <String, WidgetBuilder>{
  "/LoginScreen": (BuildContext context) => LoginScreen(),
  "/HomeScreen": (BuildContext context) => HomeScreen(),


};
void main() => runApp(new MaterialApp(
    theme:
    ThemeData(primaryColor: Colors.deepPurple,primarySwatch: Colors.deepPurple,
        primaryColorDark: Colors.deepPurple),
    debugShowCheckedModeBanner: false,
    home: UpdateProfileCust(),
    routes: routes));
