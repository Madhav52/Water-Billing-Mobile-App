import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import '../../api.dart';
import '../../drawer.dart';
import '../home.dart';

class BillingStatement extends StatefulWidget {
  
  @override
  _BillingStatementState createState() => new _BillingStatementState();
}

class _BillingStatementState extends State<BillingStatement> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final Size screenSize = media.size;
    
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Billing Statement'),
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
    );
  }
}