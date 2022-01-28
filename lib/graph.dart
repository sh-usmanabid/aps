import 'dart:io';

import 'package:alzheimer_patient_support/class/AppDrawer.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class MyGraph extends StatefulWidget  {
  const MyGraph({Key? key}) : super(key: key);

  @override
  _MyGraphState createState() => _MyGraphState();
}

class _MyGraphState extends State<MyGraph> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Graphs"),
        ),
        drawer: AppDrawer(),
        body: const Center(
            child: WebView(
              initialUrl: 'https://shielded-castle-88006.herokuapp.com/food',
              javascriptMode: JavascriptMode.unrestricted,
            )
        )
    );
  }
}