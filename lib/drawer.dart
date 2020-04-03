import 'package:flutter/material.dart';
import 'screens/fragments/about_app.dart';
import 'screens/fragments/about_us.dart';
import 'screens/fragments/contact_us.dart';
import 'screens/fragments/our_mission.dart';
import 'screens/fragments/our_vision.dart';
import 'screens/fragments/privacy_policy.dart';
import 'screens/fragments/rate_us.dart';
import 'screens/home.dart';

class SideDrawer extends StatefulWidget {
  
  
  @override
  _SideDrawerState createState() => _SideDrawerState();
}


class _SideDrawerState extends State<SideDrawer> {
  
  buildList(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 22,
        color: Colors.deepPurple,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'sans',
            color: Colors.deepPurple,
            fontSize: 15,
            fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(15),
            color: Colors.deepPurple,
            child: Center(
              child:Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top:30),
                    child: CircleAvatar(
                      backgroundImage: ExactAssetImage('assets/madhav.jpg'),
                      minRadius: 20,
                      maxRadius: 50,
                      ),
                    
                  ),
                  Container(
                    padding: EdgeInsets.only(top:10),
                    child: Text(
                      'KUKL Khanepani',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]
              )
               
            ),
          ),
           buildList(
            'Home',
            Icons.home,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    
                    return HomeScreen();
                  },
                ),
              );
            },
          ),
          new Divider(
              color: Colors.deepPurple,
              height: 2.0,
            ),
          buildList(
            'About Us',
            Icons.supervisor_account,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return AboutUs();
                  },
                ),
              );
            },
          ),
          new Divider(
              color: Colors.deepPurple,
              height: 2.0,
            ),
          buildList(
            'Our Mission',
            Icons.my_location,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return OurMission();
                    
                  },
                  
                ),
              );
            },
          ),
          new Divider(
              color: Colors.deepPurple,
              height: 3.0,
            ),
          buildList(
            'Our Vision',
            Icons.wb_sunny,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return OurVision();
                  },
                ),
              );
            },
          ),
          new Divider(
              color: Colors.deepPurple,
              height: 2.0,
            ),
          buildList(
            'Contact Us',
            Icons.contacts,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return ContactUs();
                  },
                ),
              );
            },
          ),
          new Divider(
              color: Colors.deepPurple,
              height: 2.0,
            ),
          buildList(
            'Rate Us',
            Icons.thumb_up,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return RateUs();
                  },
                ),
              );
            },
          ),
          new Divider(
              color: Colors.deepPurple,
              height: 2.0,
            ),
          buildList(
            'Privacy Policy',
            Icons.verified_user,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return PrivacyPolicy();
                  },
                ),
              );
            },
          ),
          new Divider(
              color: Colors.deepPurple,
              height: 2.0,
            ),
          buildList(
            'About App',
            Icons.touch_app,
            () {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return AboutApp();
                  },
                ),
              );
            },
          ),
          new Divider(
              color: Colors.deepPurple,
              height: 2.0,
            ),
        ],
      ),
    );
  }
}
