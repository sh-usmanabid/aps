import 'package:alzheimer_patient_support/class/AppDrawer.dart';
import 'package:flutter/material.dart';

class MySettings extends StatelessWidget {
  const MySettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
        ),
        drawer: AppDrawer(),
        body: Center(
            child: Text("Settings")
        )
    );
  }
}
