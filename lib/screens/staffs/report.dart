import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:mdi/mdi.dart';
import '../../api.dart';
import '../../drawer.dart';
import '../home.dart';

class Report extends StatefulWidget {

  @override
  _ReportState createState() => new _ReportState();
}

class _ReportState extends State<Report> {
  TextEditingController messageController = TextEditingController();
  String fileName;
  var data = [];
  // String _selectedCategory = 'Leakage';
  String _selectedCategory;

    void fetchCategory() async {
      var apiUrl = "category";
      
      var res = await CallApi().getCategory(apiUrl);
      
      var data1 =jsonDecode(res.body)[0];
      // print(data1);
      // print(jsonEncode(data1) );
      var a =[];
      int l = data1.length;
      // print(l);
      for(var i=0;i<l;i++){
        print(data1[i]);
        a.add(data1[i].toString());
      }
      print(a);
      // var result = jsonDecode(res);
      // print(a);
      setState(() {
        data = a;
      });
      
    }
    

  void initState() {
    super.initState();
    fetchCategory();
  }


  //  static final String uploadEndPoint =
  //     'http://localhost/flutter_test/upload_image.php';
  Future<File> file;
  String status = '';
  // String base64Image;
  File tmpFile;
  String errMessage = 'Error Uploading Image';

  
//  File file;
  chooseImage() {
    setState(() {
      file = ImagePicker.pickImage(source: ImageSource.gallery);
    });
    setStatus('');
  }
 
  setStatus(String message) {
    setState(() {
      status = message;
    });
  }
 
//   startUpload() {
//     setStatus('Uploading Image...');
//     if (null == tmpFile) {
//       setStatus(errMessage);
//       return;
//     }
//     fileName = tmpFile.path.split('/').last;
//     // upload(fileName);
//   }
 
  // upload(String fileName) {
  //   http.post(uploadEndPoint, body: {
  //     "image": base64Image,
  //     "name": fileName,
  //   }).then((result) {
  //     setStatus(result.statusCode == 200 ? result.body : errMessage);
  //   }).catchError((error) {
  //     setStatus(error);
  //   });
  // }
  submit1() async{
    
    
    // formdata.add
    var message = messageController.text;
    var image = file;
    fileName = tmpFile.path.split('/').last;
    // var image = base64Image;
    var category = _selectedCategory;

  FormData formdata = new FormData.fromMap({
      "image_name": fileName,
      "message": message,
      "image": await MultipartFile.fromFile(tmpFile.path, filename: fileName)
    });

    
    print(formdata);
    Dio dio = new Dio();
    dio.options.headers = {
        'Content-type': 'multipart/form-data',
        'Accept': 'application/json'
      };
    var apiUrl = 'http://10.0.2.2:8000/api/report';
    dio.post(apiUrl,data: formdata).then((response) => print(response));//.catchError((error) => print(error));
      
    // );
    // print(res.body);
  //     .then((response) => print(response))
  // .catchError((error) => print(error));
  
  }
//   void _upload() async {
//     File file;
//    String fileName = file.path.split('/').last;
//    var message = messageController.text;
//     var image = file;
//      var category = _selectedCategory;

//    FormData data = FormData.fromMap({
//       "file": await MultipartFile.fromFile(
//         file.path,
//         filename: fileName,
//         'image':image,
//       'image_name':fileName,
//       'message':message,
//       'category':category,
//       ),
//    });

//   Dio dio = new Dio();

//   dio.post("report", data: data)
//   .then((response) => print(response))
//   .catchError((error) => print(error));
// }
 
  Widget showImage() {
    return FutureBuilder<File>(
      future: file,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            null != snapshot.data) {
          tmpFile = snapshot.data;
          // base64Image = base64Encode(snapshot.data.readAsBytesSync());
          return Container(
            child: Image.file(
              snapshot.data,
              fit: BoxFit.fill,
              height: 80,
              width: 130,
            ),
          );
        } else if (null != snapshot.error) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);

    final Size screenSize = media.size;
    // List<dynamic> data = [];
    
    // String _selectedCategory;

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
                    margin: EdgeInsets.only(top:35),
                    height:600.0,
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
                           child: Text("Report",
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
                           child: Text("Hello! If you found any problems related to water service such as water leakage or broken tap, fill the form and report to us.",
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
                            padding: EdgeInsets.fromLTRB(30, 10, 20, 0),
                            child: DropdownButton(
                              // value: _selectedCategory,
                              hint: Text('Select One Complaints Category'),
                              
                              items:  data.map((category) 
                              {
                                return  DropdownMenuItem(
                                  value: category,
                                  child: new Text(category),
                                  
                                );
                              }
                              ).toList(),
                              onChanged: (newValue) {
                                print(newValue);
                                // _selectedCategory = newValue;
                                setState(() {
                                  _selectedCategory = newValue;
                                  print(_selectedCategory);
                                });
                              },
                              value: _selectedCategory,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 30, top:27),
                                  child: RaisedButton(
                                    onPressed: chooseImage,
                                    child: Text('Choose Image'),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top:27, left:20),
                                child: showImage(),
                              ),
                              
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 0, 20, 0),
                            child: TextField(
                              controller: messageController,
                              maxLines: 3,
                              keyboardType: TextInputType.text,
                              autofocus: false,
                              decoration: InputDecoration(
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
                                height: 50.0,
                                child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                color: Colors.deepPurpleAccent,
                                  onPressed: (){submit1();},
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