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
      decoration: new BoxDecoration(color:  const Color(0xDD4B87EC)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
            child: Container(
              width: 600.0,
              height: 600.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/text_logo.png'),),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: SizedBox(
                  width: 200,
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
            ),
          )
     ]
    ),

    );
  }
}