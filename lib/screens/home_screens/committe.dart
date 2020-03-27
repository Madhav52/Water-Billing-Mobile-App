import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/drawer.dart';
import 'package:mdi/mdi.dart';

import '../login.dart';



class Committe extends StatefulWidget {
  

  @override
  _CommitteState createState() => new _CommitteState();
}
class _CommitteState extends State<Committe> {

  @override
  Widget build(BuildContext context) {
    
    MediaQueryData media = MediaQuery.of(context);

    final Size screenSize = media.size;

    return new Scaffold(
      appBar: AppBar(
        title: new Text('Committe'),
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
      

      body: new Container(
        width: screenSize.width,
        height: screenSize.height,
        child: new ListView( 
        children: <Widget>[
          new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: <Widget>[
                InkWell(
                  onTap: (){
                    
                  },
                  child:Container(
                    margin: EdgeInsets.only(top:40),
                    height:90.0,
                    width: 500.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.fromLTRB(20,10,20,0),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, right:20),
                                 child: Icon(Icons.people_outline, size: 40.0, color: Colors.white),
                              ),
                              
                              Text("Board Members",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 25,
                                letterSpacing: 1.5)
                              ),
                            ],
                          ),  
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    
                  },
                  child:Container(
                    margin: EdgeInsets.only(top:20),
                    height:90.0,
                    width: 500.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.fromLTRB(20,10,20,0),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, right:20),
                                 child: Icon(Icons.supervisor_account, size: 40.0, color: Colors.white),
                              ),
                              
                              Text("Regional Members",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 25,
                                letterSpacing: 1.5)
                              ),
                            ],
                          ),  
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    
                  },
                  child:Container(
                    margin: EdgeInsets.only(top:20),
                    height:90.0,
                    width: 500.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.fromLTRB(20,10,20,0),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, right:20),
                                 child: Icon(Icons.group_add, size: 40.0, color: Colors.white),
                              ),
                              
                              Text("Staffs",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 25,
                                letterSpacing: 1.5)
                              ),
                            ],
                          ),  
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    
                  },
                  child:Container(
                    margin: EdgeInsets.only(top:20),
                    height:90.0,
                    width: 500.0,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        
                      ),
                      margin: EdgeInsets.fromLTRB(20,10,20,0),
                      elevation: 10.0,
                      color: Colors.deepPurpleAccent,
                      child:Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, right:20),
                                 child: Icon(Icons.people, size: 40.0, color: Colors.white),
                              ),
                              
                              Text("Advisors",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open-Sans",
                                fontSize: 25,
                                letterSpacing: 1.5)
                              ),
                            ],
                          ),  
                      ),
                    ),
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

