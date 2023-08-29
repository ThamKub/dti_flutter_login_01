// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Login8UI extends StatefulWidget {
  const Login8UI({super.key});

  @override
  State<Login8UI> createState() => _Login8UIState();
}

class _Login8UIState extends State<Login8UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(children: [
        SizedBox(
            height: 65,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                  child: Text(
                    'Welcome!',
                    style: GoogleFonts.itim(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Color.fromARGB(255, 11, 0, 81)),
                  ),
              ),
            ],
          ),
          SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: Text(
                    'Sign in to continue',
                    style: GoogleFonts.itim(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Color.fromARGB(255, 153, 127, 255)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 31, 16, 130),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: GoogleFonts.itim(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextField(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 31, 16, 130),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: GoogleFonts.itim(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 30, 0, 255),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                  'Login',
                  style: GoogleFonts.itim(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.itim(fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Login_8UI(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Social Media Login',
              style: GoogleFonts.itim(
                fontSize: 20,
                color: Color.fromARGB(136, 14, 1, 112),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Container(
                    height: 45,
                    width: 50,
                    child: Image.asset(
                      'assets/icon/google.png',
                    ),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                ),
                Container(
                  child: Container(
                    height: 30,
                    width: 30,
                    child: Image.asset('assets/icon/facebook.png'),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                ),
                Container(
                  child: Container(
                    height: 40,
                    width: 45,
                    child: Image.asset('assets/icon/apple.png'),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Don't have an account?  ",
                    style: GoogleFonts.itim(
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(136, 14, 1, 112)),
                  ),
                  Text(
                    'Sign up',
                    style: GoogleFonts.itim(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
      ]
      ),
    );
  }
}

class Login_8UI extends StatelessWidget {
  const Login_8UI({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(children: <Widget>[
        buildDivider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            " or ",
            style: GoogleFonts.itim(color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        buildDivider(),
      ]),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Colors.black,
        height: 1.5,
      ),
    );
  }
}