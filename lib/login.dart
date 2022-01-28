import 'dart:convert';
import 'dart:io';

import 'package:alzheimer_patient_support/model/saveUserModel/registerModel.dart';
import 'package:alzheimer_patient_support/register.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  // of the TextField.
  final email_controller = TextEditingController();
  final password_controller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    email_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: const EdgeInsets.only(left: 35, top: 130),
              child: const Text(
                'Welcome\nBack',
                style: const TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery
                        .of(context)
                        .size
                        .height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: const TextStyle(color: Colors.black),
                            controller: email_controller,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: const TextStyle(),
                            obscureText: true,
                            controller: password_controller,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 27, fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: const Color(0xff4c505b),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      String username = email_controller.text;
                                      String password = password_controller
                                          .text;
                                      checkValuesAndPush(
                                          context, username, password);
                                      /*Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (
                                                  context) => const MyGraph()
                                          ),
                                          ModalRoute.withName("/homePage")
                                      );*/
                                    },
                                    icon: const Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) =>
                                      const MyRegister())
                                  );
                                  //Navigator.pushNamed(context, 'register');
                                },
                                child: const Text(
                                  'Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18),
                                ),
                                style: const ButtonStyle(),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> checkValuesAndPush(BuildContext context, String email,
      String password) async {
    var logindata = await SharedPreferences.getInstance();
    if (email != '' && password != '') {
      Map data = {
        'email': email,
        'password': password
      };
      var jsonResponse = null;
      var response = await http.post(Uri.parse('https://warm-mesa-70121.herokuapp.com/api/login-user'), headers : {
      "Accept": "application/json"
      },body: data);
      // if(response.statusCode == 200) {
      print(data);

      // Getting Server response into variable.
      var message = jsonDecode(response.body);
      print(message);

        jsonResponse = json.decode(response.body);
        if(jsonResponse != null) {
          logindata.setBool("login", true);
          print(jsonResponse['email']);
        // }
      } else{
        Fluttertoast.showToast(
            msg: "Server error",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }
    } else {
      Fluttertoast.showToast(
          msg: "Please Fill Box",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
  }
    // _apiResponse = await authenticateUser(email, _password);
    /*Future<registerModel> authenticateUser(BuildContext context, String email, String password) async {
      registerModel _apiResponse = registerModel();
      Map data = {
        'email': email,
        'password': password
      };
      try {
        final response = await http.post(Uri.parse('https://warm-mesa-70121.herokuapp.com/api/login-user'), headers : {
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded"
        }, body: data);

        switch (response.statusCode) {
          case 200:
            Fluttertoast.showToast(
                msg: "Login Done",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
            _apiResponse = registerModel.fromJson(json.decode(response.body));
            break;

          default:
            Fluttertoast.showToast(
                msg: "Server Error",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
            break;
        }
      } on SocketException {
        Fluttertoast.showToast(
            msg: "Server error. Please retry",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }
      return _apiResponse;
    }*/

}