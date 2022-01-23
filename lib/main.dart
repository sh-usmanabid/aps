import 'package:alzheimer_patient_support/login.dart';
import 'package:alzheimer_patient_support/register.dart';
import 'package:alzheimer_patient_support/started.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const StartedPage(),
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
      'started': (context) => const StartedPage(),
    },
  ));
}
