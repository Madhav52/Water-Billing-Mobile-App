
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/screens/fragments/about_us.dart';
import 'package:flutter_login_page_ui/screens/fragments/contact_us.dart';
import 'package:flutter_login_page_ui/screens/fragments/home_fragment.dart';
import 'package:flutter_login_page_ui/screens/fragments/setting.dart';
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

class HomeScreen extends StatefulWidget {
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
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
        new Column(
          children: <Widget>[
            new ListTile(
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
            ),
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
            //   new ListTile(
            //   title: new Text(
            //       "Home",
            //        style: new TextStyle(
            //         color: Colors.deepPurple,
            //         fontWeight: FontWeight.bold
            //     ),
            //   ),
            //   leading: new Icon(Icons.home,color: Colors.deepPurple,),
            //   selected: true,
            //  // onTap: ()=>Navigator.of(context).pop(),
            //   onTap: ()=>NavigationRouter.switchToProfile(context),
            // ),
            // new Divider(
            //   color: Colors.deepPurple,
            //   height: 2.0,
            // ),
            // new ListTile(
            //   title: new Text(
            //       "Profile",
            //        style: new TextStyle(
            //         color: Colors.deepPurple,
            //         fontWeight: FontWeight.bold
            //     ),
            //   ),
            //   leading: new Icon(Icons.person,color: Colors.deepPurple,),
            // ),
            // new Divider(
            //   color: Colors.deepPurple,
            //   height: 2.0,
            // ),
            // new ListTile(
            //   title: new Text(
            //       "Setting",
            //        style: new TextStyle(
            //         color: Colors.deepPurple,
            //         fontWeight: FontWeight.bold
            //     ),
            //   ),
            //   leading: new Icon(Icons.settings,color: Colors.deepPurple,),
            // ),
            // new Divider(
            //   color: Colors.deepPurple,
            //   height: 2.0,
            // ),
            // new ListTile(
            //   title: new Text(
            //     'Activity',
            //     style: new TextStyle(
            //       color: Colors.deepPurple,
            //       fontWeight: FontWeight.bold
            //     ),
            //   ),
            //   leading: new Icon(Icons.print,color: Colors.deepPurple,),
            // )
          ],
        ),
      ),
      body: _setDrawerItemWidget(_selectedIndex)
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
