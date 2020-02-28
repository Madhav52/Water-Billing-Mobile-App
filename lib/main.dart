import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/screens/billing/payment_history.dart';
import 'package:flutter_login_page_ui/screens/customer/complaints.dart';
import 'package:flutter_login_page_ui/screens/customer/feedback.dart' as prefix0;
import 'package:flutter_login_page_ui/screens/customer/update_profile.dart';
import 'package:flutter_login_page_ui/screens/customer/view_profile.dart';
import 'package:flutter_login_page_ui/screens/billing/billing_statement.dart';
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
    home: Complaints(),
    routes: routes));
