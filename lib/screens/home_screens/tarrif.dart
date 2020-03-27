import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/screens/fragments/about_app.dart';
import 'package:flutter_login_page_ui/screens/fragments/about_us.dart';
import 'package:flutter_login_page_ui/screens/fragments/contact_us.dart';
import 'package:flutter_login_page_ui/screens/fragments/our_mission.dart';
import 'package:flutter_login_page_ui/screens/fragments/our_vision.dart';
import 'package:flutter_login_page_ui/screens/fragments/privacy_policy.dart';
import 'package:flutter_login_page_ui/screens/fragments/rate_us.dart';
import 'package:mdi/mdi.dart';
import '../../drawer.dart';
import '../home.dart';
import '../login.dart';

class Tarrif extends StatefulWidget {

  @override
  _TarrifState createState() => new _TarrifState();
}

class _TarrifState extends State<Tarrif> {

  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final Size screenSize = media.size;
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Tarrif Guide'),
        actions: <Widget>[
          FlatButton(
                onPressed: () => {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()), )
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
      body: new GestureDetector(
        onTap: () {
        // call this method here to hide soft keyboard
        FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
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
                              padding: EdgeInsets.fromLTRB(30.0,30.0,0.0,20),
                              child: Text("FY 2020/21",
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
                              child: Text("Community Tap",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  letterSpacing: 1.5)
                                ),
                            
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30.0,5.0,0.0,0),
                              child: Text("0 to 10 units - Rs. 200",
                                style: TextStyle(
                                  
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.5)
                                ),
                            
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30.0,5.0,0.0,0),
                              child: Text("11 to 20 units - Rs. 25/unit",
                                style: TextStyle(
                                  
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.5)
                                ),
                            
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30.0,5.0,0.0,0),
                              child: Text("21 to 30 units - Rs. 30/unit",
                                style: TextStyle(
                                  
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.5)
                                ),
                            
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30.0,5.0,0.0,0),
                              child: Text("More than 30 units - Rs. 35/unit",
                                style: TextStyle(
                                  
                                  fontFamily: "Open-Sans",
                                  fontSize: 20,
                                  letterSpacing: 1.5)
                                ),
                            
                            )
                          ], 
                          )
                        ),
                      ),
                      new Container(
                        margin: EdgeInsets.only(top:20),
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
                              padding: EdgeInsets.fromLTRB(30.0,30.0,0.0,20),
                              child: Text("Tarrif Calculator",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Open-Sans",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  letterSpacing: 1.5)
                                ),
                            
                            ),
                            Center(
                              child: new Column(
                                  children: <Widget>[       
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        
                                        border: Border.all(color: Colors.deepPurpleAccent,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0) //                 <--- border radius here
                                        ),
                                      ),
                                      child: Text("Total: Rs. 520",
                                      style: TextStyle(
                                        fontFamily: "Open-Sans",
                                        fontSize: 20,
                                        letterSpacing: 1.5)
                                        ),
                                      ),
                                    
                                      Container(
                                        width: 100,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          autofocus: false,
                                          decoration: InputDecoration(
                                            
                                            labelText: "Enter the unit.",
                                            //hintText: 'Enter the unit.'
                                          ),
                                        ),
                                      ),
                                      Container(
                                padding: EdgeInsets.only(top:30),
                                child: Center(
                                  child: ButtonTheme(
                                    minWidth: 120.0,
                                    height: 45.0,
                                    child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(30.0),
                                    ),
                                    color: Colors.deepPurpleAccent,
                                      onPressed: () {},
                                      child: const Text(
                                        'Calculate',
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
                              ),
                            ),
                          ],
                          ),
                        ),
                      ),
                  ]
                  ),
                ),
            ]
          ),
        ),
      ),
    );
  }

}