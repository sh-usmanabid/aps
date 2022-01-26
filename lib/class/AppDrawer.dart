import 'package:alzheimer_patient_support/graph.dart';
import 'package:alzheimer_patient_support/home.dart';
import 'package:alzheimer_patient_support/settings.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xDD4B87EC),
      child: ListView(
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/text_logo.png'),),
              ),
            ),
            ListTile(
              title: const Text('Graph'),
              leading: const Icon(Icons.bar_chart_outlined),
              onTap: () {
                Navigator.pushReplacement<void, void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const MyGraph(),
                  ),
                );
                // Navigator.pushReplacementNamed(context, pageRoutes.graph),
              },
            ),
            ListTile(
              title: const Text('Location'),
              leading: const Icon(Icons.location_on_outlined),
              onTap: () {
                Navigator.pushReplacement<void, void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const HomePage(),
                  ),
                );
                // Navigator.pushReplacementNamed(context, pageRoutes.graph),
              },
            ),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.pushReplacement<void, void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const MySettings(),
                  ),
                );
                // Navigator.pushReplacementNamed(context, pageRoutes.settings),
              },
            ),
          ]
      ),
    );
  }

}