import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/screens/staffs/meter_reading.dart';
import 'package:flutter_login_page_ui/screens/staffs/report.dart';
import 'package:flutter_login_page_ui/screens/staffs/view_profile.dart';
import 'package:mdi/mdi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../api.dart';
import '../../drawer.dart';
import '../home.dart';
import 'update-profile.dart';

class StaffDashboard extends StatefulWidget {
  
  @override
  _StaffDashboardState createState() => new _StaffDashboardState();
}

class _StaffDashboardState extends State<StaffDashboard> {

  void initState() {
    super.initState();
    _getUserInfo();
    CallApi().logout();
  }
  var userData;
  
  _getUserInfo() async {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      var userJson = localStorage.getString('user'); 
      var user = json.decode(userJson);
      setState(() {
        userData = user;
      });
      return userData;

  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final Size screenSize = media.size;
    
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Staff Home'),
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
      body: new SingleChildScrollView(
        child:Column(
           mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          new Stack(
            children: <Widget>[
          Container(
            padding: EdgeInsets.only(left:10),
            height: 150,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
            ),
            child: Padding(padding: EdgeInsets.only(top:40),
            child:Text(("Namaste! ") + (userData!= null ? '${userData['name']}' : 'user'),
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Open-Sans",
                fontWeight: FontWeight.w700,
                fontSize: 30,
                letterSpacing: 1.5)
              ),
            ),
            
          ),
            new Container(
              margin: EdgeInsets.only(top:110, left:60),
              height:70.0,
              width: 300.0,
              child: Center(
                child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  
                ),
                elevation: 10.0,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(30.0,15,30,0),
                    child: Text("Good "+ greeting(),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Open-Sans",
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        letterSpacing: 1.5)
                      ),
                  
                    ),
                  ]
                ),
              ),
            ),
            ),
            ],
          ),
            new Container(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewProfileStaff()), );
                  },
                  child:Container(
                    margin: EdgeInsets.only(top:20),
                    height:150.0,
                    width: 200.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.all(10),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.people, size: 40.0, color: Colors.white), 
                              Text("View Profile",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 20,
                                letterSpacing: 1.2)
                              ),
                            ],
                          )
                        )
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UpdateProfileStaff()), );
                    },
                  child:Container(
                    margin: EdgeInsets.only(top:20),
                    height:150.0,
                    width: 200.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.all(10),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Mdi.update, size: 40.0, color: Colors.white), 
                              Text("Update Profile",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 20,
                                letterSpacing: 1.2)
                              ),
                            ],
                          )
                        )
                      ),
                    ),
                  ),
                ),
              ]
            ),
          ),
          new Container(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MeterReading()), );
                  },
                  
                  child:Container(
                    margin: EdgeInsets.only(top:20),
                    height:150.0,
                    width: 200.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.all(10),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Mdi.cameraMeteringCenter, size: 40.0, color: Colors.white), 
                              Text("Meter Reading",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 20,
                                letterSpacing: 1.2)
                              ),
                            ],
                          )
                        )
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Report()), );
                  },
                  child:Container(
                    margin: EdgeInsets.only(top:20),
                    height:150.0,
                    width: 200.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.all(10),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Mdi.commentAccount, size: 40.0, color: Colors.white), 
                              Text("Report",
                              style: TextStyle(
                                
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 20,
                                letterSpacing: 1.2,
                                )
                              ),
                            ],
                          )
                        )
                      ),
                    ),
                  ),
                ), 
              ]
            ),
          ),
        ], 
      ),
    ),
  );
}
  String greeting(){
    var hour  = DateTime.now().hour;
    if (hour < 12){
      return 'Morning';
    }
    if (hour < 17){
      return 'Afternoon';
    }
    if (hour < 20){
      return 'Evening';
    }
    else{
      return 'Night';
    }
  }
}