import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/api.dart';
import 'package:mdi/mdi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../drawer.dart';
import '../home.dart';

class ViewProfileStaff extends StatefulWidget {
  
  
  @override
  _ViewProfileStaffState createState() => new _ViewProfileStaffState();
}

class _ViewProfileStaffState extends State<ViewProfileStaff> {
  var staffData;
  
  _getProfile() async{
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    String user = localStorage.get('user');
    var userDetail = json.decode(user); 
    var url = 'staff?phone=' + userDetail['phone'];
    var res = await CallApi().getData(url);
    var body = json.decode(res.body);
    var staff = body['staff'][0];
    setState(() {
        staffData = staff;
        print(staffData);
      });
    }
     void initState() {
    _getProfile();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final Size screenSize = media.size;
    
    return new Scaffold(
      appBar: AppBar(
        title: new Text('View Profile'),
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
      body: new Container(
        width: screenSize.width,
        child: new ListView( 
        children: <Widget>[
          new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(top:30),
                    height:300.0,
                    width: 370.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      elevation: 10.0,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:20),
                                 child: Icon(Mdi.faceProfile, size: 40.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:20),
                                child:Text("View Profile",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 30,
                                  letterSpacing: 1.5)
                                ),
                              ),
                            ],
                          ),
                         Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:20),
                                 child: Icon(Mdi.renameBox, size: 30.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:20),
                                child:Text((staffData!= null ? '${staffData['name']}' : 'Name'),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.0)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:10),
                                 child: Icon(Mdi.cellphoneAndroid, size: 30.0, color: Colors.black), 
                                 
                              ),
                              Padding(padding: EdgeInsets.only(top:10),
                                child:Text((staffData!= null ? '${staffData['phone']}' : 'Phone'),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.0)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:10),
                                 child: Icon(Mdi.email, size: 30.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:10),
                                child:Text((staffData!= null ? '${staffData['email']}' : 'Email'),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.0)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:10),
                                 child: Icon(Mdi.mapMarker, size: 30.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:10),
                                child:Text((staffData!= null ? '${staffData['vdc']}' : 'VDC') + ', ' + (staffData!= null ? '${staffData['ward']}' : 'Ward'),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.5)
                                ),
                              ),
                            ],
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
    );
  }
}