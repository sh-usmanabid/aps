import 'package:alzheimer_patient_support/class/AppDrawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Location",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
