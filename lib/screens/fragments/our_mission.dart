import 'package:flutter/material.dart';

class OurMission extends StatefulWidget {
  @override
  _OurMissionState createState() => new _OurMissionState();
}

class _OurMissionState extends State<OurMission> {
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
                           child: Text("Our Mission",
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
                           padding: EdgeInsets.fromLTRB(30,20,30,20),
                           child: Text("Kathmandu Town is an emerging town and various development activities are undergoing in this city. The Kathmandu Khanepani Upatyka Limites (KUKL) made the value so high. This project made the city more beautiful for living point of view and also supported to maintain the living standard of Kathmandu Valley people.",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Roboto",
                              fontSize: 20,
                              
                              letterSpacing: 1.0)
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


