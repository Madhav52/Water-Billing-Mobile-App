import 'package:flutter_login_page_ui/screens/billing/billing_statement.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import '../../api.dart';
import '../../drawer.dart';
import '../home.dart';

class BillingHistory extends StatefulWidget {
  
  @override
  _BillingHistoryState createState() => new _BillingHistoryState();
}

class _BillingHistoryState extends State<BillingHistory> {


  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final Size screenSize = media.size;
     
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Billing History'),
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
        height: screenSize.height,
        child: new ListView( 
        children: <Widget>[
          new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BillingStatement()),
                      );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:40),
                    height:90.0,
                    width: 370.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      color: Colors.deepPurpleAccent,
                      elevation: 10.0,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, top:27),
                                 child: Icon(Mdi.calendar, size: 30.0, color: Colors.white),
                              ),
                              Padding(padding: EdgeInsets.only(top:27, right: 100),
                                child:Text("Kartik 2076",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Open-Sans",
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5)
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:25, right:20),
                                 child: Icon(Mdi.chevronRight, size: 30.0, color: Colors.white),
                              ),
                            ],
                          ),
                       ], 
                      )
                    ),
                  ), 
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BillingStatement()),
                      );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:10),
                    height:90.0,
                    width: 370.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      color: Colors.deepPurpleAccent,
                      elevation: 10.0,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, top:27),
                                 child: Icon(Mdi.calendar, size: 30.0, color: Colors.white),
                              ),
                              Padding(padding: EdgeInsets.only(top:27, right: 100),
                                child:Text("Mangsir 2076",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Open-Sans",
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5)
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:25, right:20),
                                 child: Icon(Mdi.chevronRight, size: 30.0, color: Colors.white),
                              ),
                            ],
                          ),
                       ], 
                      )
                    ),
                  ), 
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BillingStatement()),
                      );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:10),
                    height:90.0,
                    width: 370.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      color: Colors.deepPurpleAccent,
                      elevation: 10.0,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, top:27),
                                 child: Icon(Mdi.calendar, size: 30.0, color: Colors.white),
                              ),
                              Padding(padding: EdgeInsets.only(top:27, right: 100),
                                child:Text("Poush 2076",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Open-Sans",
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5)
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:25, right:20),
                                 child: Icon(Mdi.chevronRight, size: 30.0, color: Colors.white),
                              ),
                            ],
                          ),
                       ], 
                      )
                    ),
                  ), 
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BillingStatement()),
                      );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:10),
                    height:90.0,
                    width: 370.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      color: Colors.deepPurpleAccent,
                      elevation: 10.0,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, top:27),
                                 child: Icon(Mdi.calendar, size: 30.0, color: Colors.white),
                              ),
                              Padding(padding: EdgeInsets.only(top:27, right: 100),
                                child:Text("Magh 2076",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Open-Sans",
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5)
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:25, right:20),
                                 child: Icon(Mdi.chevronRight, size: 30.0, color: Colors.white),
                              ),
                            ],
                          ),
                       ], 
                      )
                    ),
                  ), 
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BillingStatement()),
                      );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:10),
                    height:90.0,
                    width: 370.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      color: Colors.deepPurpleAccent,
                      elevation: 10.0,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, top:27),
                                 child: Icon(Mdi.calendar, size: 30.0, color: Colors.white),
                              ),
                              Padding(padding: EdgeInsets.only(top:27, right: 100),
                                child:Text("Falgun 2076",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Open-Sans",
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5)
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:25, right:20),
                                 child: Icon(Mdi.chevronRight, size: 30.0, color: Colors.white),
                              ),
                            ],
                          ),
                       ], 
                      )
                    ),
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