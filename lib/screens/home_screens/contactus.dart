import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import '../../drawer.dart';
import '../login.dart';
// import 'package:flutter_email_sender/flutter_email_sender.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:mailto/mailto.dart';
// // Optional, but most likely what you want
// import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  
  @override
  _ContactState createState() => new _ContactState();
}

class _ContactState extends State<Contact> {
  // List<String> attachments = [];
  // bool isHTML = false;

  // final _recipientController = TextEditingController(
  //   text: 'example@example.com',
  // );

  // final _subjectController = TextEditingController(text: 'The subject');

  // final _bodyController = TextEditingController(
  //   text: 'Mail body.',
  // );

  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // Future<void> send() async {
  //   final Email email = Email(
  //     body: "_bodyController.text",
  //     subject: '_subjectController.text',
  //     recipients: ['shishirsthz@gmail.com'],
  //     // attachmentPaths: attachments,
  //     isHTML: isHTML,
  //   );

  //   String platformResponse;

  //   try {
  //     await FlutterEmailSender.send(email);
  //     platformResponse = 'success';
  //   } catch (error) {
  //     platformResponse = error.toString();
  //   }

  //   if (!mounted) return;

  //   _scaffoldKey.currentState.showSnackBar(SnackBar(
  //     content: Text(platformResponse),
  //   ));
  
  
  // launchMailto() async {
  // final mailtoLink = Mailto(
  //   to: ['shishirsthz@gmail.com'],
  //   cc: ['cc1@example.com', 'cc2@example.com'],
  //   subject: 'mailto example subject',
  //   body: 'mailto example body',
  // );
  // // Convert the Mailto instance into a string.
  // // Use either Dart's string interpolation
  // // or the toString() method.
  // await launch('$mailtoLink');

  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);

    final Size screenSize = media.size;
    
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Contact Us'),
        actions: <Widget>[
          FlatButton(
                onPressed: ()  {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()), );
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
        child: new ListView( 
        children: <Widget>[
          new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(top:30),
                    height:580.0,
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
                           child: Text("Contact Us",
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
                           child: Center(
                           child: Text("Hi! If you have any queries or confusion regarding this app, just feel free to fill the form and send to us.",
                           textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Roboto",
                              fontSize: 18,
                              
                              letterSpacing: 1.0)
                            ),
                           ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                labelText: "Full Name*",
                                hintText: 'Enter your full name.'
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                icon: Icon(Icons.phonelink_ring),
                                labelText: "Phone Number*",
                                hintText: 'Enter Your Valid Phone No.'
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                icon: Icon(Icons.subject),
                                labelText: "Subject*",
                                hintText: 'Subject For Contacting Us.'
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: TextField(
                              maxLines: 3,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                icon: Icon(Icons.message),
                                labelText: "Message",
                                hintText: 'Write Your Message Here.'
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top:30),
                            child: Center(
                              child: ButtonTheme(
                                minWidth: 120.0,
                                height: 55.0,
                                child: RaisedButton(
                                  onPressed: (){},
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                color: Colors.deepPurpleAccent,
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