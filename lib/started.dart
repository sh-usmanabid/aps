import 'package:alzheimer_patient_support/login.dart';
import 'package:flutter/material.dart';

class StartedPage extends StatelessWidget {
  const StartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              fit: BoxFit.cover)),
      padding: EdgeInsets.only(top: 50.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text("Alzheimer\nPatient Support",
        style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 38.0,
              height: 1.4,
              fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyLogin()
                        ),
                        ModalRoute.withName("/Home")
                    );
                    // Navigator.push(context, MaterialPageRoute(
                    //     builder: (context) =>
                    //     MyLogin())
                    // );
                    // Navigator.pushNamed(context, 'login');
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Get Started',
                      textAlign: TextAlign.left,
                      /*style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontSize: 18),*/
                    ),
                  ),
                  style: TextButton.styleFrom(primary: Colors.white,
                    shadowColor: Colors.teal,
                    backgroundColor: Colors.teal,
                    onSurface: Colors.grey,
                    elevation: 5,
                    // onPrimary: Colors.white,
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
              ),
            ),
          )
     ]
    ),

    );
  }
}