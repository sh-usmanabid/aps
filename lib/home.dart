import 'dart:io';

import 'package:alzheimer_patient_support/class/AppDrawer.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget  {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          title: Text("Location"),
        ),
        drawer: AppDrawer(),
        body: const Center(
            child: WebView(
              initialUrl: 'https://shielded-castle-88006.herokuapp.com/location',
              javascriptMode: JavascriptMode.unrestricted,
            )
        )
    );
  }
}