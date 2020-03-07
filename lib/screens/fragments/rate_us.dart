import 'package:flutter/material.dart';

class RateUs extends StatefulWidget {
  @override
  _RateUsState createState() => new _RateUsState();
}

class _RateUsState extends State<RateUs> {
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
                         Container(
                           padding: EdgeInsets.only(top: 30),
                           child: Center(
                            child: Text("Rate Us",
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
                           padding: EdgeInsets.fromLTRB(30,30,30,30),
                           child: Text("RateUs using App Play Store",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Roboto",
                              fontSize: 20,
                              letterSpacing: 1.0)
                            ),
                           ),
                           GestureDetector(
                            child: Center(
                              child: Text("Visit App Play Store", style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue))
                            ),
                            onTap: () {
                              // do what you need to do when "Click here" gets clicked
                            }
                          ),
                          Container(
                           padding: EdgeInsets.fromLTRB(20,30,20,20),
                           child: Center(
                            child: Text("Your rate keeps us motivated for futher development",
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


