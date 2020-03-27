import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import '../../api.dart';
import '../../drawer.dart';
import '../home.dart';

class MakePayment extends StatefulWidget {
  
  @override
  _MakePaymentState createState() => new _MakePaymentState();
}

class _MakePaymentState extends State<MakePayment> {


  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final Size screenSize = media.size;
    
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Make Payment'),
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
                    height:420.0,
                    width: 380.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      elevation: 10.0,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:20),
                                 child: Icon(Mdi.currencyInr, size: 40.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:20),
                                child:Text("Make Payment",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 30,
                                  letterSpacing: 1.5)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              InkWell(
                                onTap: (){
                                  // _payViaKhalti();
                                },
                              child: Padding(
                                padding: EdgeInsets.only( top:10, left: 50, right:20),
                                  child: Image.asset('assets/khalti.png',
                                    width: 100,
                                    height: 100,
                                  ),
                              ),
                              ),
                              Padding(padding: EdgeInsets.only(top:10, left: 30, right:20),
                                child: Image.asset('assets/esewa.png',
                                    width: 100,
                                    height: 100,
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