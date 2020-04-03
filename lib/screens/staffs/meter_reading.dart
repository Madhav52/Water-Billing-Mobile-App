import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../api.dart';
import '../../drawer.dart';
import '../home.dart';

class MeterReading extends StatefulWidget {
  
  @override
  _MeterReadingState createState() => new _MeterReadingState();
}

class _MeterReadingState extends State<MeterReading> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController readingController = TextEditingController();

  //controller 

  //button onpress function to 
  void reading() async{
       var data = {
      'phone': phoneController.text,
      'reading': readingController.text
    };

    SharedPreferences localstorage = await SharedPreferences.getInstance();
    String user = localstorage.get('user');
    var result = jsonDecode(user);

    data['id'] = result['id'].toString();

    var apiUrl = "reading";
    
    var res = await CallApi().postData1(data, apiUrl);
    print(res.body);


  }


  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final Size screenSize = media.size;
   
    
    return new Scaffold(
      appBar: AppBar(
        title: new Text('View Profile'),
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
      body: new GestureDetector(
        onTap: () {
        // call this method here to hide soft keyboard
        FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
        width: screenSize.width,
        child: new ListView( 
        children: <Widget>[
          new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(top:30),
                    height:310.0,
                    width: 370.0,
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
                           child: Text("FY 2076/77",
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
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: TextField(
                              controller: phoneController,
                              keyboardType: TextInputType.number,
                              autofocus: false,
                              decoration: InputDecoration(
                                icon: Icon(Icons.phone_android),
                                labelText: "Phone Number",
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextField(
                              controller: readingController,
                              keyboardType: TextInputType.number,
                              autofocus: false,
                              decoration: InputDecoration(
                                icon: Icon(Mdi.cameraMeteringCenter),
                                labelText: "Current Reading",
                              ),
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
                                  onPressed: () {
                                    reading();
                                  },
                                  child: const Text(
                                    'Submit',
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
      ),
    );
  }
}