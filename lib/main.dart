import 'package:alzheimer_patient_support/graph.dart';
import 'package:alzheimer_patient_support/home.dart';
import 'package:alzheimer_patient_support/login.dart';
import 'package:alzheimer_patient_support/profile.dart';
import 'package:alzheimer_patient_support/register.dart';
import 'package:alzheimer_patient_support/settings.dart';
import 'package:alzheimer_patient_support/started.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: const Color(0xDD4B87EC),
    ),
    debugShowCheckedModeBanner: false,
    home: const StartedPage(),
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
      'started': (context) => const StartedPage(),
      'homePage': (context) => HomePage(),
      // 'profile': (context) =>  MyProfile(),
      'graph': (context) =>  MyGraph(),
      'settings': (context) => MySettings(),
    },
  ));
}
