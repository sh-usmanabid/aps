import 'dart:io';

import 'package:alzheimer_patient_support/class/AppDrawer.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class MySettings extends StatefulWidget  {
  const MySettings({Key? key}) : super(key: key);

  @override
  _MySettingsState createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
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
          title: Text("Settings"),
        ),
        drawer: AppDrawer(),
        body: const Center(
            child: WebView(
              initialUrl: 'https://shielded-castle-88006.herokuapp.com/settings',
              javascriptMode: JavascriptMode.unrestricted,
            )
        )
    );
  }
}