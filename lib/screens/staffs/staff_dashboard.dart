import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:flutter_login_page_ui/screens/fragments/about_app.dart';
import 'package:flutter_login_page_ui/screens/fragments/about_us.dart';
import 'package:flutter_login_page_ui/screens/fragments/contact_us.dart';
import 'package:flutter_login_page_ui/screens/fragments/our_mission.dart';
import 'package:flutter_login_page_ui/screens/fragments/our_vision.dart';
import 'package:flutter_login_page_ui/screens/fragments/privacy_policy.dart';
import 'package:flutter_login_page_ui/screens/fragments/rate_us.dart';

import '../home.dart';
class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class StaffDashboard extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("About Us", Icons.supervisor_account),
    new DrawerItem("Our Mission", Icons.my_location),
    new DrawerItem("Our Vision", Icons.wb_sunny),
    // new DrawerItem("Setting", Icons.settings),
    new DrawerItem("Contact us", Icons.contacts),
    new DrawerItem("Rate Us", Icons.thumb_up),
    new DrawerItem("Privacy Policy", Icons.verified_user),
    new DrawerItem("About App", Icons.touch_app),
    
  ];

  @override
  _StaffDashboardState createState() => new _StaffDashboardState();
}

class _StaffDashboardState extends State<StaffDashboard> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);

    final Size screenSize = media.size;
              
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      var listTile = new ListTile(
        leading: new Icon(
            d.icon,
            color: Colors.deepPurple
        ),
        
        title: new Text(
            d.title,
            style: new TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold
            )),
            
        selected: i == _selectedIndex,
        onTap: () => _onSelectItem(i),
      );
      drawerOptions.add(
        new Column(
          children: <Widget>[
            listTile,
            new Divider(
              color: Colors.deepPurple,
              height: 2.0,
            )
          ],
        )
      );
      
    }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.drawerItems[_selectedIndex].title),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.notifications, color: Colors.white), onPressed: null),
          
        ],
        elevation: defaultTargetPlatform== TargetPlatform.android?5.0:0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Madhav"),
                accountEmail: new Text("Madhav@gmail.com"),

                currentAccountPicture: new CircleAvatar(
                  maxRadius: 50.0,
                  backgroundColor: Colors.transparent,
                  child: new Center(
                    child: new Image.asset(
                      "assets/madhav.jpg",
                      height: 58.0,
                      width: 58.0,
                  ),)
                 // backgroundImage: new Image.network(src),
                ),

            ),
            new Column(
              children: drawerOptions
            ),
          ],
        ),
      ),
      body: new Container(
        width: screenSize.width,
        height: screenSize.height,
        child: new Stack( 
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left:10),
            height: 150,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
            ),
            child: Padding(padding: EdgeInsets.only(top:40),
            child:Text("Welcome! UserName",
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
              margin: EdgeInsets.only(top:100, left:60),
              height:90.0,
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
                    padding: EdgeInsets.fromLTRB(30.0,22,30,0),
                    child: Text("Good Morning!",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Open-Sans",
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 1.5)
                      ),
                  
                    ),
                  ]
                ),
              ),
            ),
            ),
            new Container(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: <Widget>[
                InkWell(
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Committe()), );
                  },
                  child:Container(
                    margin: EdgeInsets.only(top:230),
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
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Tarrif()), );
                    },
                  child:Container(
                    margin: EdgeInsets.only(top:230),
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
              //       Navigator.push(
              // context,
              // MaterialPageRoute(builder: (context) => ServiceScreen()), );
                  },
                  
                  child:Container(
                    margin: EdgeInsets.only(top:400),
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
              //       Navigator.push(
              // context,
              // MaterialPageRoute(builder: (context) => Contact()), );
                  },
                  child:Container(
                    margin: EdgeInsets.only(top:400),
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
          ]
        ),
      ),
        // _setDrawerItemWidget(_selectedIndex)
    );
  }
  _setDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomeScreen();
      case 1:
        return new AboutUs();
      case 2:
        return new OurMission();
      case 3:
        return new OurVision();
      case 4:
        return new ContactUs();
      case 5:
        return new PrivacyPolicy();
      case 6:
        return new RateUs();
      case 7:
        return new AboutApp();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }


}