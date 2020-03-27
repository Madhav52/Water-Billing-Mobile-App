import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import '../../api.dart';
import '../../drawer.dart';
import '../home.dart';

class PaymentStatement extends StatefulWidget {
  
  @override
  _PaymentStatementState createState() => new _PaymentStatementState();
}

class _PaymentStatementState extends State<PaymentStatement> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final Size screenSize = media.size;
    
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Payment Statement'),
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
                    height:300.0,
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
                           padding: EdgeInsets.fromLTRB(30.0,30.0,0.0,0),
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
                           child: Text("Payment Id: K0125",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,15.0,0.0,0),
                           child: Text("Payment Date: 03/11/2076",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,15.0,0.0,0),
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
                           padding: EdgeInsets.fromLTRB(30.0,15.0,0.0,0),
                           child: Text("Payment Amount: Rs. 160",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              letterSpacing: 1.5)
                            ),
                         ),
                         Padding(
                           padding: EdgeInsets.fromLTRB(30.0,15.0,0.0,0),
                           child: Text("Due Amount: Rs. 0",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              letterSpacing: 1.5)
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