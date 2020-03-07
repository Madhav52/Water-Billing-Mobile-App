import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class AboutApp extends StatefulWidget {
  @override
  _AboutAppState createState() => new _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final Size screenSize = media.size;
    return new Scaffold(
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
                    height:520.0,
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
                            child: Text("About App",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Open-Sans",
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                letterSpacing: 1.5)
                            ),
                           ),
                          ),
                          Container(
                           padding: EdgeInsets.fromLTRB(30,30,30,10),
                           child: Center(
                            child: Image.asset('assets/water.png',
                                width: 200,
                                height: 150,
                                
                              ),
                            ),
                          ),
                          Container(
                           padding: EdgeInsets.fromLTRB(20,10,20,10),
                           child: Center(
                            child: Text("Khanepaani",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Roboto",
                                fontSize: 20,
                                letterSpacing: 1.0)
                              ),
                            ),
                          ),
                          Container(
                           padding: EdgeInsets.fromLTRB(20,10,20,10),
                           child: Center(
                            child: Text("info@khanepaani.com",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Roboto",
                                fontSize: 20,
                                letterSpacing: 1.0)
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only( top:10, right:5),
                                 child: Icon(Mdi.copyright, size: 28.0, color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.only(top:5),
                                child:Text("2020. All Rights Reserved",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.0)
                                ),
                              ),
                            ],
                          ),
                          Container(
                           padding: EdgeInsets.fromLTRB(20,30,20,10),
                           child: Center(
                            child: Text("Designed and Developed By",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                letterSpacing: 1.0)
                              ),
                            ),
                          ),
                          Container(
                           padding: EdgeInsets.fromLTRB(20,0,20,10),
                           child: Center(
                            child: Text("Madhav Prasad Belbase",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Roboto",
                                fontSize: 20,
                                letterSpacing: 1.0)
                              ),
                            ),
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


