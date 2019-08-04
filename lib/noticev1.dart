import 'package:flutter/material.dart';

class NotIm extends StatefulWidget {
  NotIm(this.path);
  final String path;

  @override
  _NotImState createState() => _NotImState();
}

class _NotImState extends State<NotIm> {
  String doc;
  @override
  void initState() {
    
     doc ='http://result.bpsplayschool.com/'+widget.path;
  
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Board'),
      ),
      body: Center(
        child: Image.network(doc),
      ),
    );
  }
}