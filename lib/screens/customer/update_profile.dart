import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/screens/fragments/about_app.dart';
import 'package:flutter_login_page_ui/screens/fragments/about_us.dart';
import 'package:flutter_login_page_ui/screens/fragments/contact_us.dart';
import 'package:flutter_login_page_ui/screens/fragments/our_mission.dart';
import 'package:flutter_login_page_ui/screens/fragments/our_vision.dart';
import 'package:flutter_login_page_ui/screens/fragments/privacy_policy.dart';
import 'package:flutter_login_page_ui/screens/fragments/rate_us.dart';
import 'package:mdi/mdi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../api.dart';
import '../../drawer.dart';
import '../home.dart';

class UpdateProfileCust extends StatefulWidget {
  
  @override
  _UpdateProfileCustState createState() => new _UpdateProfileCustState();
}

class _UpdateProfileCustState extends State<UpdateProfileCust> {

  var userData;

  void initState() {
    _getUserInfo();
    super.initState();
  }
  _getUserInfo() async {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      var userJson = localStorage.getString('user'); 
      var user = json.decode(userJson);
      setState(() {
        userData = user;
      });
  }
  
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final Size screenSize = media.size;
      
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Update Profile'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: null),
          FlatButton(
                onPressed: ()  {
                  CallApi().logout();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()), );
                 
                },
                splashColor: Colors.yellow,
                color: Colors.deepPurple,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right:5),
                        child: Icon(Mdi.login,  color: Colors.white),
                    ),
                    Text("Logout", style: TextStyle(color: Colors.white, fontSize: 20))
                    
                  ],
                ),
              ),
        ],
        elevation: 5,
      ),
      drawer: SideDrawer(),
      body: new GestureDetector(
        onTap: () {
        // call this method here to hide soft keyboard
        FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
        width: screenSize.width,
        child: new ListView( 
        children: <Widget>[
          new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(top:30),
                    height:450.0,
                    width: 350.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      elevation: 10.0,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Container(
                           padding: EdgeInsets.only(top: 30),
                           child: Center(
                           child: Text("Update Profile",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              letterSpacing: 1.5)
                            ),
                           ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: TextField(
                              controller: TextEditingController(text: userData['name'].toString()),
                              
                              keyboardType: TextInputType.text,
                              autofocus: false,
                              decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                labelText: "Full Name",
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextField(
                              controller: TextEditingController(text: userData['email'].toString()),
                              keyboardType: TextInputType.text,
                              autofocus: false,
                              decoration: InputDecoration(
                                icon: Icon(Icons.email),
                                labelText: "Email",
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextField(
                              controller: TextEditingController(text: userData['vdc'].toString()),
                              keyboardType: TextInputType.text,
                              autofocus: false,
                              decoration: InputDecoration(
                                icon: Icon(Mdi.mapMarker),
                                labelText: "VDC/Municipality",
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextField(
                              controller: TextEditingController(text: userData['ward'].toString()),
                              keyboardType: TextInputType.number,
                              autofocus: false,
                              decoration: InputDecoration(
                                icon: Icon(Icons.map),
                                labelText: "Ward No",
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top:30),
                            child: Center(
                              child: ButtonTheme(
                                minWidth: 120.0,
                                height: 50.0,
                                child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                color: Colors.deepPurpleAccent,
                                  onPressed: () {},
                                  child: const Text(
                                    'Update',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Open-Sans",
                                      color: Colors.white
                                      )
                                    
                                  ),
                                ),
                              ),
                            ),
                            
                          ),
                       ], 
                      )
                    ),
                  ),
              ]
              ),
            ),
        ]
        ),
      ),
      ),
    );
  }
}