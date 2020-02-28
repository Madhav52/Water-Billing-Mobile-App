
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

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class BillingStatement extends StatefulWidget {
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
  _BillingStatementState createState() => new _BillingStatementState();
}

class _BillingStatementState extends State<BillingStatement> {

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
      // actions: <Widget>[
      //   IconButton(icon:Icon(Icons.notifications), onPressed: (){})        
      // ];
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
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(top:30),
                    height:550.0,
                    width: 350.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      elevation: 10.0,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,30.0,0.0,20),
                           child: Text("Billing Statement",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              letterSpacing: 1.5)
                            ),
                         
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,5.0,0.0,0),
                           child: Text("Falgun 2076",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              letterSpacing: 1.5)
                            ),
                         
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,20.0,0.0,0),
                           child: Text("Bill Id: K0125",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,10.0,0.0,0),
                           child: Text("Billing Date: 03/11/2076",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,10.0,0.0,0),
                           child: Text("Reading Date: 02/11/2076",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,10.0,0.0,0),
                           child: Text("Previous Unit: 102",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,10.0,0.0,0),
                           child: Text("Current Unit: 118",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,10.0,0.0,0),
                           child: Text("Consumed Unit: 16",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,10.0,0.0,0),
                           child: Text("Total Amount: Rs. 160",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,10.0,0.0,0),
                           child: Text("Payment Status: Pending",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,10.0,0.0,0),
                           child: Text("Rading Staff: Santosh Lama",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              letterSpacing: 1.5)
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
                                    'Pay Now',
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