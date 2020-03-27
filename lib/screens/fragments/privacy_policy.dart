import 'package:flutter/material.dart';

import '../../drawer.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => new _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final Size screenSize = media.size;
    return new Scaffold(
       appBar: AppBar(
        title: new Text('Privacy Policy'),
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
                    height:500.0,
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
                           child: Text("Privacy Policy",
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
                           child: Text("This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with data.",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Roboto",
                              fontSize: 20,
                              
                              letterSpacing: 1.0)
                            ),
                           ),
                           Container(
                           padding: EdgeInsets.fromLTRB(30,20,30,20),
                           child: Text("We use your data to provide and improve the Service. By using our Service, you agree to the collection and use of information in accordance with our policy and government rules.",
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


