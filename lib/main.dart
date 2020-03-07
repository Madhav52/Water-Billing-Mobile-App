import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/screens/root_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_login_page_ui/screens/home.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoggedIn = false;

  @override
  void initState() {
    _checkIfLoggedIn();
    super.initState();
  }
  void _checkIfLoggedIn() async{
      // check if token is there
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      var token = localStorage.getString('token');
      if(token!= null){
         setState(() {
            _isLoggedIn = true;
         });
      }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
    ThemeData(primaryColor: Colors.deepPurple,primarySwatch: Colors.deepPurple,
        primaryColorDark: Colors.deepPurple),
      home: RootView(),
      
    );
  }
}


// var routes = <String, WidgetBuilder>{
//   "/LoginScreen": (BuildContext context) => LoginScreen(),
//   "/HomeScreen": (BuildContext context) => HomeScreen(),


// };
// void main() => runApp(new MaterialApp(
//     theme:
//     ThemeData(primaryColor: Colors.deepPurple,primarySwatch: Colors.deepPurple,
//         primaryColorDark: Colors.deepPurple),
//     debugShowCheckedModeBanner: false,
//     home: HomeScreen(),
//     routes: routes));
