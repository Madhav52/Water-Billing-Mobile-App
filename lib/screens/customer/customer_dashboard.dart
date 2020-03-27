import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/screens/billing/billing_history.dart';
import 'package:flutter_login_page_ui/screens/billing/payment_history.dart';
import 'package:flutter_login_page_ui/screens/customer/complaints.dart';
import 'package:flutter_login_page_ui/screens/customer/feedback.dart';
import 'package:flutter_login_page_ui/screens/customer/make_payment.dart';
import 'package:flutter_login_page_ui/screens/customer/view_profile.dart';
import 'package:mdi/mdi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../api.dart';
import '../../drawer.dart';
import '../home.dart';

class CustomerDashboard extends StatefulWidget {

  @override
  _CustomerDashboardState createState() => new _CustomerDashboardState();
}

class _CustomerDashboardState extends State<CustomerDashboard> {
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
      return userData;

  }

  @override
  Widget build(BuildContext context) {
    // MediaQueryData media = MediaQuery.of(context);
    // final Size screenSize = media.size;
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Customer Home'),
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
        
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          new Stack(
            children: <Widget>[
              Container(
                height: 150,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                ),
                
                  
                  child: Padding(
                  padding: EdgeInsets.only(top: 30, left:10),
                  child: Text(
                    ("Namaste! ") + (userData!= null ? '${userData['name']}' : 'user') ,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Open-Sans",
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          letterSpacing: 1.5)),
                ),
              ),
              new Container(
                margin: EdgeInsets.only(top: 110, left: 60),
                height: 70.0,
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
                            padding: EdgeInsets.fromLTRB(30.0, 13, 20, 0),
                            child: Text("Good "+ greeting(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Open-Sans",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    letterSpacing: 1.5)),
                          ),
                        ]),
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewProfileCust()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 150.0,
                      width: 200.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        margin: EdgeInsets.all(10),
                        elevation: 10.0,
                        color: Colors.deepPurpleAccent,
                        child: Container(
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
                                    letterSpacing: 1.5)),
                          ],
                        ))),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BillingHistory()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 150.0,
                      width: 200.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        margin: EdgeInsets.all(10),
                        elevation: 10.0,
                        color: Colors.deepPurpleAccent,
                        child: Container(
                            child: Center(
                                child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Mdi.fileDocumentBoxMultiple,
                                size: 40.0, color: Colors.white),
                            Text("Bill Statement",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Open-Sans",
                                    fontSize: 20,
                                    letterSpacing: 1.5)),
                          ],
                        ))),
                      ),
                    ),
                  ),
                ]),
          ),
          new Container(
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MakePayment()), );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 150.0,
                      width: 200.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        margin: EdgeInsets.all(10),
                        elevation: 10.0,
                        color: Colors.deepPurpleAccent,
                        child: Container(
                            child: Center(
                                child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.monetization_on,
                                size: 40.0, color: Colors.white),
                            Text("Make Payment",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Open-Sans",
                                    fontSize: 20,
                                    letterSpacing: 1.5)),
                          ],
                        ))),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                            Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentHistory()), );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 150.0,
                      width: 200.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        margin: EdgeInsets.all(10),
                        elevation: 10.0,
                        color: Colors.deepPurpleAccent,
                        child: Container(
                            child: Center(
                                child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.multiline_chart,
                                size: 40.0, color: Colors.white),
                            Text("Payment History",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.2,
                                )),
                          ],
                        ))),
                      ),
                    ),
                  ),
                ]),
          ),
          new Container(
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                            Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FeedbackCust()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      height: 150.0,
                      width: 200.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        margin: EdgeInsets.all(10),
                        elevation: 10.0,
                        color: Colors.deepPurpleAccent,
                        child: Container(
                            child: Center(
                                child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.feedback,
                                size: 40.0, color: Colors.white),
                            Text("Feedback",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Open-Sans",
                                    fontSize: 20,
                                    letterSpacing: 1.2)),
                          ],
                        ))),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                            Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Complaints()), );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      height: 150.0,
                      width: 200.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        margin: EdgeInsets.all(10),
                        elevation: 10.0,
                        color: Colors.deepPurpleAccent,
                        child: Container(
                            child: Center(
                                child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Mdi.commentAccount,
                                size: 40.0, color: Colors.white),
                            Text("Complaints",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.2,
                                )),
                          ],
                        ))),
                      ),
                    ),
                  ),
                ]),
          ),
        ]),
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
