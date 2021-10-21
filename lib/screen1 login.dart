import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'screen2.dart';
import 'screen3.dart';

class Login1 extends StatefulWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.fill,
        )),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: MediaQuery.of(context).size.height / 12,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                    //   focusedBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(color: Colors.lightGreen)),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 20),
            child: Container(
              height: MediaQuery.of(context).size.height / 12,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    // hintText: 'enter your password?',
                    labelText: 'Password',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                    //   focusedBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(color: Colors.lightGreen)),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Screen3();
              }));
            },
            child: Container(
              alignment: Alignment.center,
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Text(
                "LOGIN",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 52,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 5, right: 20, left: 2),
                      child: SvgPicture.asset(
                        'assets/icons8-google.svg',
                        height: 32,
                        width: 32,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 22.0),
                      child: Text(
                        "Continue with google",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Container(
              alignment: Alignment.center,
              width: 300,
              height: 52,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5, right: 20),
                    child: SvgPicture.asset(
                      "assets/icons8-facebook.svg",
                      height: 32,
                      width: 32,
                    ),
                  ),
                  Text(
                    "Continue with facebook",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Screen2();
              }));
            },
            child: Container(
              alignment: Alignment.center,
              width: 300,
              height: 52,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 42, bottom: 5, right: 20),
                    child: Image.asset(
                      'assets/icons8-email-64.png',
                      color: Colors.white,
                      height: 32,
                      width: 32,
                    ),
                  ),
                  const Text(
                    "Sign up with email",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
