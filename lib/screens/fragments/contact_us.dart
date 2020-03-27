import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

import '../../drawer.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => new _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final Size screenSize = media.size;
    return new Scaffold(
       appBar: AppBar(
        title: new Text('Contact Us'),
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
                    height:400.0,
                    width: 350.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      elevation: 10.0,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Container(
                           padding: EdgeInsets.only(top: 30),
                           child: Center(
                           child: Text("Contact Us",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Open-Sans",
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              letterSpacing: 1.5)
                            ),
                           ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:20),
                                 child: Icon(Icons.location_city, size: 28.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:20),
                                child:Text("Kritipur Khanepani",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.0)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:20),
                                 child: Icon(Mdi.mapMarker, size: 28.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:20),
                                child:Text("Kritipur, Kathmandu",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.0)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:20),
                                 child: Icon(Mdi.phoneClassic, size: 28.0, color: Colors.black), 
                                 
                              ),
                              Padding(padding: EdgeInsets.only(top:20),
                                child:Text("01-452310",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.0)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:20),
                                 child: Icon(Mdi.email, size: 28.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:20),
                                child:Text("khanepaani@gmail.com",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.0)
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 20, right:20, top:20),
                                 child: Icon(Mdi.web, size: 28.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:20),
                                child:Text("www.khanepaani.com",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.0)
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
        ),
      ),
    );
  }
}


