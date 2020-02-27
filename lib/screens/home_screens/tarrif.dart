
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
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_login_page_ui/screens/home_screens/tarrif.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class Tarrif extends StatefulWidget {
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
  _TarrifState createState() => new _TarrifState();
}

class _TarrifState extends State<Tarrif> {

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
        child: new ListView( 
        children: <Widget>[
          new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(top:30),
                    height:300.0,
                    width: 350.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        
                      ),
                      elevation: 10.0,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,30.0,0.0,20),
                           child: Text("FY 2020/21",
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
                           child: Text("Community Tap",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              letterSpacing: 1.5)
                            ),
                         
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,5.0,0.0,0),
                           child: Text("0 to 10 units - Rs. 200",
                            style: TextStyle(
                              
                              fontFamily: "Open-Sans",
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,5.0,0.0,0),
                           child: Text("11 to 20 units - Rs. 25/unit",
                            style: TextStyle(
                              
                              fontFamily: "Open-Sans",
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,5.0,0.0,0),
                           child: Text("21 to 30 units - Rs. 30/unit",
                            style: TextStyle(
                              
                              fontFamily: "Open-Sans",
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,5.0,0.0,0),
                           child: Text("More than 30 units - Rs. 35/unit",
                            style: TextStyle(
                              
                              fontFamily: "Open-Sans",
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         
                         )
                       ], 
                      )
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(top:20),
                    height:300.0,
                    width: 350.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        
                      ),
                      elevation: 10.0,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,30.0,0.0,20),
                           child: Text("Tarrif Calculator",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              letterSpacing: 1.5)
                            ),
                         
                         ),
                         Center(
                           child: new Column(
                               children: <Widget>[       
                                 Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    
                                    border: Border.all(color: Colors.blueAccent,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(5.0) //                 <--- border radius here
                                    ),
                                  ),
                                  child: Text("Total: Rs. 520",
                                  style: TextStyle(
                                    fontFamily: "Open-Sans",
                                    fontSize: 20,
                                    letterSpacing: 1.5)
                                    ),
                                  ),
                                 
                                  Container(
                                    width: 100,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      autofocus: true,
                                      decoration: InputDecoration(
                                        
                                        labelText: "Enter the unit.",
                                        //hintText: 'Enter the unit.'
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: RaisedButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Calculate',
                                        style: TextStyle(fontSize: 20)
                                      ),
                                    ),
                                  ),
                               ],
                           ),
                         ),
                       ],
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


// import 'package:flutter/material.dart';

// class Tarrif extends StatefulWidget {
//   @override
//   _TarrifState createState() => new _TarrifState();
// }

// class _TarrifState extends State<Tarrif> {
//   @override
//   Widget build(BuildContext context) {
//     MediaQueryData media = MediaQuery.of(context);

//     final Size screenSize = media.size;
//     return new Scaffold(
//       body: new Container(
//         width: screenSize.width,
//         child: new ListView( 
//         children: <Widget>[
//           new Container(
//             child: new Column(
//               mainAxisAlignment: MainAxisAlignment.start,
              
//               children: <Widget>[
//                   new Container(
//                     margin: EdgeInsets.only(top:40),
//                     height:170.0,
//                     width: 200.0,
//                     child: Card(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10.0),
                        
//                       ),
//                       child: Column(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        children: <Widget>[
//                          Text("Committe",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontFamily: "Open-Sans",
//                               fontSize: 20,
//                               letterSpacing: 1.5)
//                             ),
//                             Text("Committe",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontFamily: "Open-Sans",
//                               fontSize: 20,
//                               letterSpacing: 1.5)
//                             ),
//                        ], 
//                       )
//                     ),
//                   ),
//                 ]
//               ),
//             ),
//         ]
//         ),
//       ),
//     );
//   }
// }
