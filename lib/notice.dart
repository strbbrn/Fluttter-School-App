import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:flutter/material.dart';

class Notice extends StatefulWidget {
  Notice(this.path);
  final String path;
  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  PDFDocument doc;
  @override
  void initState() {
    createFileOfPdfUrl().then((f) {
      setState(() {
        doc = f;
      });
    });

    super.initState();
  }

  Future createFileOfPdfUrl() async {
    final url = 'http://result.bpsplayschool.com/' + widget.path;
    PDFDocument doc = await PDFDocument.fromURL(url);
    return doc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Board :'),
      ),
      body: Center(
        child: PDFViewer(
          document: doc,
          showNavigation: true,
          showPicker: false,
        ),
      ),
    );
  }
}
