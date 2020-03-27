import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import '../../drawer.dart';
import '../login.dart';

class ServiceScreen extends StatefulWidget {
  
  @override
  _ServiceScreenState createState() => new _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);

    final Size screenSize = media.size;
   
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Our Services'),
        actions: <Widget>[
          FlatButton(
                onPressed: ()  {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()), );
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
                    Text("Login", style: TextStyle(color: Colors.white, fontSize: 20))
                    
                  ],
                ),
              ),
        ],
        elevation: 5,
      ),
      drawer: SideDrawer(),
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
                    height:420.0,
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
                           child: Text("Our Service",
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
                           child: Text("List of Services",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              letterSpacing: 1.5)
                            ),
                         
                         ),
                         Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, right:20, top:20),
                                 child: Icon(Icons.payment, size: 30.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:20),
                                child:Text("View Payment Details",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.5)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, right:20, top:10),
                                 child: Icon(Icons.multiline_chart, size: 25.0, color: Colors.black), 
                                 
                              ),
                              Padding(padding: EdgeInsets.only(top:10),
                                child:Text("Track Payment History",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.5)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, right:20, top:10),
                                 child: Icon(Mdi.calculator, size: 30.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:10),
                                child:Text("Tarrif Calculator",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.5)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, right:20, top:10),
                                 child: Icon(Icons.monetization_on, size: 30.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:10),
                                child:Text("Online Payment",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.5)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, right:20, top:10),
                                 child: Icon(Icons.chrome_reader_mode, size: 30.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:10),
                                child:Text("Meter Reading",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.5)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, right:20, top:10),
                                 child: Icon(Icons.feedback, size: 30.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:10),
                                child:Text("Feedback & Complaints",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.5)
                                ),
                              ),
                            ],
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