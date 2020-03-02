
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/screens/fragments/about_us.dart';
import 'package:flutter_login_page_ui/screens/fragments/contact_us.dart';
import 'package:flutter_login_page_ui/screens/fragments/home_fragment.dart';
import 'package:flutter_login_page_ui/screens/fragments/about_app.dart';
import 'package:flutter_login_page_ui/screens/fragments/our_mission.dart';
import 'package:flutter_login_page_ui/screens/fragments/our_vision.dart';
import 'package:flutter_login_page_ui/screens/fragments/rate_us.dart';
import 'package:flutter_login_page_ui/screens/fragments/privacy_policy.dart';
import 'package:mdi/mdi.dart';
import '../login.dart';


class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class Committe extends StatefulWidget {
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
  _CommitteState createState() => new _CommitteState();
}

class _CommitteState extends State<Committe> {

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
    
    Widget image_slider_carousel = Container(
      height: 250,
      child: new Carousel(
        boxFit: BoxFit.fill,
        images: [
          new AssetImage("assets/water.png"),
          new AssetImage("assets/water.png"),
          new AssetImage("assets/water.png"),
          
        ],
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.drawerItems[_selectedIndex].title),
        actions: <Widget>[
          FlatButton(
                onPressed: () => {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()), )
                },
                
                splashColor: Colors.yellow,
                color: Colors.deepPurple,
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Icon(Mdi.login, color: Colors.white,),
                    Text("Login", style: TextStyle(color: Colors.white, fontSize: 18))
                    
                  ],
                ),
              ),
        ],
        elevation: defaultTargetPlatform== TargetPlatform.android?5.0:0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Madhav"),
                accountEmail: new Text("Madhav@gmail.com"),
                // phoneNumber: new Text("9865373625"),

                currentAccountPicture: new CircleAvatar(
                  maxRadius: 50.0,
                  backgroundColor: Colors.transparent,
                  // borderRadius: BorderRadius.all(Radius.circular(50.0)),
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
        child: new ListView( 
        children: <Widget>[
          new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: <Widget>[
                InkWell(
                  onTap: (){
                    
                  },
                  child:Container(
                    margin: EdgeInsets.only(top:40),
                    height:90.0,
                    width: 500.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.fromLTRB(20,10,20,0),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, right:20),
                                 child: Icon(Icons.people_outline, size: 40.0, color: Colors.white),
                              ),
                              
                              Text("Board Members",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 25,
                                letterSpacing: 1.5)
                              ),
                            ],
                          ),  
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    
                  },
                  child:Container(
                    margin: EdgeInsets.only(top:20),
                    height:90.0,
                    width: 500.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.fromLTRB(20,10,20,0),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, right:20),
                                 child: Icon(Icons.supervisor_account, size: 40.0, color: Colors.white),
                              ),
                              
                              Text("Regional Members",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 25,
                                letterSpacing: 1.5)
                              ),
                            ],
                          ),  
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    
                  },
                  child:Container(
                    margin: EdgeInsets.only(top:20),
                    height:90.0,
                    width: 500.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.fromLTRB(20,10,20,0),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, right:20),
                                 child: Icon(Icons.group_add, size: 40.0, color: Colors.white),
                              ),
                              
                              Text("Staffs",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 25,
                                letterSpacing: 1.5)
                              ),
                            ],
                          ),  
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    
                  },
                  child:Container(
                    margin: EdgeInsets.only(top:20),
                    height:90.0,
                    width: 500.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.fromLTRB(20,10,20,0),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, right:20),
                                 child: Icon(Icons.people, size: 40.0, color: Colors.white),
                              ),
                              
                              Text("Advisors",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 25,
                                letterSpacing: 1.5)
                              ),
                            ],
                          ),  
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
        return new HomeFragment();
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