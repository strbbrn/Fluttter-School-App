import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:WebviewScaffold(
        appBar: AppBar(
        title: Text('Contact'),
        elevation: 2.0,
      ),
      url: 'http://bpsplayschool.com/contact.php',
      withJavascript: true,

      
      ) ,
    );
  }
}
