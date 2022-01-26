import 'package:alzheimer_patient_support/class/AppDrawer.dart';
import 'package:flutter/material.dart';

class MyGraph extends StatelessWidget {
  const MyGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Alzhiemer"),
        ),
        drawer: AppDrawer(),
        body: const Center(
            child: Text("Graph")
        )
    );
  }
}
