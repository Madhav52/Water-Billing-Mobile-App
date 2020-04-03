import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../api.dart';
import '../../drawer.dart';
import '../home.dart';

class UpdateProfileStaff extends StatefulWidget {
  
  @override
  _UpdateProfileStaffState createState() => new _UpdateProfileStaffState();
}

class _UpdateProfileStaffState extends State<UpdateProfileStaff> {

  void _showDialog(message) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Information Message"),
          content: new Text(message),
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            // side: BorderSide(color: Colors.red)
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close", 
              style: TextStyle(color: Colors.red),
              textDirection: TextDirection.ltr),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),

          ],
        );
      },
    );
  }
  var staffData;
  var updatedData;

  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController vdcController = new TextEditingController();
  TextEditingController wardController = new TextEditingController();
  


  void initState() {
       super.initState();
      _getStaffProfile();
      // _updateStaffProfile();
  }
  
  _getStaffProfile() async{
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    String user = localStorage.get('user');
    var userDetail = json.decode(user); 
    var url = 'staff?phone=' + userDetail['phone'];
    var res = await CallApi().getData(url);
    var body = json.decode(res.body);
    var staff = body['staff'][0];
    nameController.text = staff['name'];
    emailController.text = staff['email'];
    vdcController.text = staff['vdc'];
    wardController.text = staff['ward'].toString();
    
    setState(() {
        staffData = staff;
      });
  }
    // _updateStaffProfile() async {
    //   SharedPreferences localstorage = await SharedPreferences.getInstance();
    //   String user = localstorage.get('user');
    //   var staffDetail = json.decode(user);
      
    //   var url = 'staff?phone=' + staffDetail['phone'] + '&name=' + staffDetail['name'] + '&email=' + staffDetail['email'] + '&vdc=' + staffDetail['vdc'] + '&ward=' + staffDetail['ward'].toString();
    //   print(url);
      
    //   var response = await CallApi().putData(url);
    //   print(response);
    //   var staffbody = json.decode(response.body);
    //   print(staffbody);
    //   var updateStaff = staffbody['staff'];
    //   print(updateStaff);
    //   setState(() {
    //     updatedData = updateStaff;
    //     print(updatedData);
    //   });
    // }
  
    _updateStaffProfile() async {
      SharedPreferences localstorage = await SharedPreferences.getInstance();
      String user = localstorage.get('user');
      // String token1 = localstorage.getString('token');

      var staffDetail = json.decode(user);
      var data = {
        'id': staffDetail["id"],
        'name': nameController.text,
        'email': emailController.text,
        'vdc': vdcController.text,
        'ward': wardController.text
        
      };
      var data1 = {
        'id': staffDetail["id"],
        'token': staffDetail["token"],
        'phone': staffDetail["phone"],
        'name': nameController.text,
        'email': emailController.text,
        'vdc': vdcController.text,
        'ward': wardController.text
        
      };
      // var url = 'user/' ;
      var token = staffDetail["token"];
      // + staffDetail['id'] + '&name=' + nameController.text + '&email=' + emailController.text + '&vdc=' + vdcController.text + '&ward=' + wardController.text;
      var response = await CallApi().putData(data, token ,'user/');
      // print(response);
      print(jsonDecode(response.body)['data']['message'].toString());
      // print(response.body);
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      // print(data1);
      // print(data1);
      await localStorage.setString('user', jsonEncode(data1));
      print(localStorage.get('user'));
      return(jsonDecode(response.body)['data']['message'].toString());
    //  var res = await CallApi().getData(url);
    // var body = json.decode(res.body);
    // var staff = body['staff'][0];
    // print(staff);
    // localstorage.setString('user', jsonEncode(staff));
    //  setState(() {
    //     staffData = user;
    //     print(staffData);
    //   });
      // print(jsonDecode(localStorage.get(user)));
    
    }

    
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    final Size screenSize = media.size;
    
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Update Profile'),
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
                           child: Text("Update Profile",
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
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: TextField(
                              // controller: TextEditingController(text: (staffData!= null ? '${staffData['name']}' : 'Name')),
                              controller: nameController,
                              
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                labelText: "Full Name",
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextField(
                              // controller: TextEditingController(text: (staffData!= null ? '${staffData['email']}' : 'Email')),
                              // onChanged: (text)=> emailController,
                              controller: emailController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                icon: Icon(Icons.email),
                                labelText: "Email",
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextField(
                              controller: vdcController,
                              // controller: TextEditingController(text: (staffData!= null ? '${staffData['vdc']}' : 'VDC/Municipality')),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                icon: Icon(Mdi.mapMarker),
                                labelText: "VDC/Municipality",
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextField(
                              controller: wardController,
                              // controller: TextEditingController(text: (staffData!= null ? '${staffData['ward']}' : 'Ward No')),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                icon: Icon(Mdi.mapMarker),
                                labelText: "Ward No",
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
                                  onPressed: () async {
                                    
                                      var msg = await _updateStaffProfile();
                                      _showDialog(msg);
                                    
                                  },
                                  child: const Text(
                                    'Update',
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