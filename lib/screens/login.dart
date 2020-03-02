import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/screens/customer/customer_dashboard.dart';
import 'package:flutter_login_page_ui/screens/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_login_page_ui/api.dart';

// void main() => runApp(MaterialApp(
//       home: MaterialApp(),
//       debugShowCheckedModeBanner: false,
//     ));

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

// class _LoginData {
//   String email = '';
//   String password = '';
// }

class _LoginScreenState extends State<LoginScreen> {
  bool _isSelected = false;

  bool _isLoading = false;


  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  ScaffoldState scaffoldState;
  _showMsg(msg) { //
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    }); 
  }

  Widget radioButton(bool isSelected) => Container(
        width: 16.0,
        height: 16.0,
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2.0, color: Colors.black)),
        child: isSelected
            ? Container(
                width: double.infinity,
                height: double.infinity,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              )
            : Container(),
      );

  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: ScreenUtil.getInstance().setWidth(600),
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 800, height: 1334, allowFontScaling: true);
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Image.asset("assets/water.png", 
                width: 500,
                height: 400,
                fit:BoxFit.fill
                ),
                
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 250.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: ScreenUtil.getInstance().setHeight(750),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, 15.0),
                              blurRadius: 15.0),
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, -10.0),
                              blurRadius: 10.0),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 26.0),
                      child: Column(
                        children: <Widget>[
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                              Text("Login",
                              style: TextStyle(
                                  fontSize: ScreenUtil.getInstance().setSp(70),
                                  fontFamily: "Poppins-Bold",
                                  letterSpacing: .6)),
                                  horizontalLine(),
                              SizedBox(
                            height: ScreenUtil.getInstance().setHeight(30),
                          ),
                          
                          ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Phone Number",
                              style: TextStyle(
                                  fontFamily: "Poppins-Medium",
                                  fontSize: ScreenUtil.getInstance().setSp(26))),
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Phone Number",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                          ),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(30),
                          ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("PassWord",
                              style: TextStyle(
                                  fontFamily: "Poppins-Medium",
                                  fontSize: ScreenUtil.getInstance().setSp(26))),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
                          ),
                          SizedBox(
                            height: ScreenUtil.getInstance().setHeight(35),
                          ),

                            ],
                          ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 12.0,
                                        ),
                                        GestureDetector(
                                          onTap: _radio,
                                          child: radioButton(_isSelected),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text("Remember me",
                                            style: TextStyle(
                                                fontSize: 12, fontFamily: "Poppins-Medium"))
                                      ],
                                    ),
                            
                              Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: "Poppins-Medium",
                                    fontSize: ScreenUtil.getInstance().setSp(28)),
                              )
                            ],
                          ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                //     Row(
                                //       children: <Widget>[
                                //         InkWell(
                                //           child: Padding(
                                //             padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 50.0),
                                //             child: Container(
                                //               width: ScreenUtil.getInstance().setWidth(330),
                                //               height: ScreenUtil.getInstance().setHeight(100),
                                //               decoration: BoxDecoration(
                                //                   gradient: LinearGradient(colors: [
                                //                     Color(0xFF00dbde),
                                //                     Color(0xFFfc00ff)
                                //                   ]),
                                //                   borderRadius: BorderRadius.circular(30.0),
                                //                   boxShadow: [
                                //                     BoxShadow(
                                //                         color: Color(0xFF6078ea).withOpacity(.3),
                                //                         offset: Offset(0.0, 8.0),
                                //                         blurRadius: 8.0)
                                //                   ]),
                                //               child: Material(
                                //                 color: Colors.transparent,
                                //                 child: InkWell(
                                //                   onTap: () {
                                //                   },
                                //                   child: Center(
                                //                     child: Text( _isLoading? 'Loging...' : 'LOGIN',
                                //                         style: TextStyle(
                                //                             color: Colors.white,
                                //                             fontFamily: "Poppins-Bold",
                                //                             fontSize: 18,
                                //                             letterSpacing: 1.0
                                //                             )
                                //                             ),
                                                  
                                //                   ),
                                //                 ),
                                //             ),
                                //           ),
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: RaisedButton(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 8, bottom: 8, left: 10, right: 10),
                                      child: Text(
                                        _isLoading? 'Loging...' : 'Login',
                                        textDirection: TextDirection.ltr,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    color: Color(0xFFFF835F),
                                    disabledColor: Colors.grey,
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(20.0)),
                                    onPressed: _isLoading ? null : _login,
                                ),
                              ),
                            ],
                          )
                        ]
                      ),
                    ),
                  ), 
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  void _login() async{
    
    setState(() {
       _isLoading = true;
    });

    var data = {
        'email' : mailController.text, 
        'password' : passwordController.text
    };

    var res = await CallApi().postData(data, 'authenticate');
    var body = json.decode(res.body);
    if(body != null ){
      if (body['success']){
        SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', body['token']);
      localStorage.setString('user', json.encode(body['user']));
      Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => HomeScreen()));
      }  
      
    }else{
      _showMsg(body['message']);
    }


    setState(() {
       _isLoading = false;
    });

  


  }

}