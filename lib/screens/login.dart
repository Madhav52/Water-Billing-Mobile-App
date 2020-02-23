import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                                    Row(
                                      children: <Widget>[
                                        InkWell(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 50.0),
                                            child: Container(
                                              width: ScreenUtil.getInstance().setWidth(330),
                                              height: ScreenUtil.getInstance().setHeight(100),
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(colors: [
                                                    Color(0xFF00dbde),
                                                    Color(0xFFfc00ff)
                                                  ]),
                                                  borderRadius: BorderRadius.circular(30.0),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Color(0xFF6078ea).withOpacity(.3),
                                                        offset: Offset(0.0, 8.0),
                                                        blurRadius: 8.0)
                                                  ]),
                                              child: Material(
                                                color: Colors.transparent,
                                                child: InkWell(
                                                  onTap: () {},
                                                  child: Center(
                                                    child: Text("LOGIN",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontFamily: "Poppins-Bold",
                                                            fontSize: 18,
                                                            letterSpacing: 1.0)),
                                                  ),
                                                ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                    )
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

}