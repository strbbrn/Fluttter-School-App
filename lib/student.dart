import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:school/home.dart' ;
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';
import 'package:school/updates.dart';



var green = Color(0xFF4caf6a);
var greenLight = Color(0xFFd8ebde);

var red = Color(0xFFf36169);
var redLight = Color(0xFFf2dcdf);

var blue = Color(0xFF398bcf);
var blueLight = Color(0xFFc1dbee);

class Student extends StatefulWidget {
  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  @override
  void initState() {
    super.initState();
    flutterWebviewPlugin.close();
    flutterWebviewPlugin.onUrlChanged.listen((String url) {
               
    });
  }

  @override
  void dispose() {
    super.dispose();
    flutterWebviewPlugin.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Student'),
          elevation: 2.0,
          backgroundColor: Color.fromARGB(255, 0, 191, 255),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(
              'assets/1.jpg',
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                direction: Axis.horizontal,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    child: Container(
                      height: 92.0,
                      width: 104.0,
                      color: greenLight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InAppWebView(
                                    initialUrl: 'http://result.bpsplayschool.com/find-result.php',
                                    initialOptions: {
                                      "javaScriptEnabled":true,
                                      "transparentBackground":true,
                                      "useWideViewPort":true,
                                      "displayZoomControls":true,

                                    },
                                  )));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.person,
                              color: green,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              'Result',
                              style: TextStyle(
                                  color: green, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    child: Container(
                      height: 92.0,
                      width: 104.0,
                      color: redLight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.timelapse,
                              color: red,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              'Notice',
                              style: TextStyle(
                                  color: red, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    child: Container(
                      height: 92.0,
                      width: 104.0,
                      color: greenLight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Updates()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.update,
                              color: green,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              'Update',
                              style: TextStyle(
                                  color: green, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    child: Container(
                      height: 92.0,
                      width: 104.0,
                      color: greenLight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InAppWebView(
                                    initialUrl: 'http://result.bpsplayschool.com/find-syllabus.php',
                                    initialOptions: {
                                      "javaScriptEnabled":true,
                                      "transparentBackground":true,
                                      "useWideViewPort":true,
                                      "displayZoomControls":true,

                                    },
                                  )));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.library_books,
                              color: green,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              'Syllabus',
                              style: TextStyle(
                                  color: green, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    child: Container(
                      height: 92.0,
                      width: 104.0,
                      color: redLight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InAppWebView(
                                    initialUrl: 'http://result.bpsplayschool.com/find-routine.php',
                                    initialOptions: {
                                      "javaScriptEnabled":true,
                                      "transparentBackground":true,
                                      "useWideViewPort":true,
                                      "displayZoomControls":true,

                                    },
                                  )));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.book,
                              color: red,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              'Routine',
                              style: TextStyle(
                                  color: red, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    child: Container(
                      height: 92.0,
                      width: 104.0,
                      color: greenLight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.person,
                              color: green,
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              'Bus Track',
                              style: TextStyle(
                                  color: green, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(15.0),
                  //     topRight: Radius.circular(15.0),
                  //     bottomRight: Radius.circular(15.0),
                  //   ),
                  //   child: Container(
                  //     height: 92.0,
                  //     width: 104.0,
                  //     color: blueLight,
                  //     child: InkWell(
                  //       onTap: () {
                  //         Scaffold.of(context).showSnackBar(SnackBar(
                  //           content: Text('Not Available'),
                  //         ));
                  //       },
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: <Widget>[
                  //           Icon(
                  //             Icons.check_circle,
                  //             color: blue,
                  //           ),
                  //           SizedBox(
                  //             height: 4.0,
                  //           ),
                  //           Text(
                  //             'Attendance',
                  //             style: TextStyle(
                  //                 color: blue, fontWeight: FontWeight.w500),
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ));
  }
}
