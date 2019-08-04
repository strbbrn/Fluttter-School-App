import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:school/gallery.dart';
import 'package:school/home.dart';
import 'package:school/student.dart';



void main() => runApp(MaterialApp(
      title: 'School',
      home: MyHomePage(),
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   primaryColor: Colors.lightBlue[800],
      //   accentColor: Colors.cyan[600],
      // ),
    ));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState(){
    super.initState();
    
   
  }
  
  int currentIndex = 0;
  final _widgetOptions = [
    Home(),
    GalleryPage(),
    Student(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: _widgetOptions.elementAt(currentIndex),
        decoration: new BoxDecoration(color: Colors.white),
      ),
      bottomNavigationBar: BottomNavyBar(
        onItemSelected: (index) => setState(() {
              currentIndex = index;
            }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.image),
            title: Text('Gallery'),
            activeColor: Colors.purpleAccent,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.people),
            title: Text('Student'),
            activeColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
