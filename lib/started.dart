import 'package:alzheimer_patient_support/graph.dart';
import 'package:alzheimer_patient_support/login.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartedPage extends StatefulWidget {
  const StartedPage({Key? key}) : super(key: key);

  @override
  State<StartedPage> createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage> {

  @override
  void initState() {
    firebaseMessageState();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xDD4B87EC),
      ),
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }

  Future<void> firebaseMessageState() async {
    var logindata = await SharedPreferences.getInstance();
    String? token = await FirebaseMessaging.instance.getToken();
    print(token);
    logindata.setString("fcm_token", token!);

  }
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(color:  Color(0xDD4B87EC)),
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
                      check_if_already_login(context);
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

void check_if_already_login(BuildContext context) async {
  var logindata = await SharedPreferences.getInstance();
  var newuser = (logindata.getBool('login') ?? false);
  print(newuser);
  if(newuser){
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
            builder: (context) => const MyGraph()
        ),
        ModalRoute.withName("/homePage")
    );
  }else{
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
            builder: (context) => const MyLogin()
        ),
        ModalRoute.withName("/login")
    );
  }
}