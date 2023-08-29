// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Login4UI extends StatefulWidget {
  const Login4UI({super.key});

  @override
  State<Login4UI> createState() => _Login4UIState();
}

class _Login4UIState extends State<Login4UI> {
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
      body: Column(
        children: [
          SizedBox(
            height: 65,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Welcome back! Glad"
                  "\nto see you, Again!",
                  style: GoogleFonts.itim(
                      fontWeight: FontWeight.bold, fontSize: 40.0,
                      ),
                ),
              ),
              Container(
                height: 20,
                width: 20,
              ),
              //Icon(
              //Icons.person_outlined,
              //size: 20,
              //)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 233, 233),
                  border: Border.all(color: Color.fromARGB(231, 255, 255, 255)),
                  borderRadius: BorderRadius.circular(1)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your email',
                    hintStyle: GoogleFonts.itim(),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 233, 233),
                  border: Border.all(color: Color.fromARGB(231, 255, 255, 255)),
                  borderRadius: BorderRadius.circular(1)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your password',
                    suffixIcon: Icon(Icons.password_outlined),
                    hintStyle: GoogleFonts.itim(),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot password ?',
                  style: GoogleFonts.itim(fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 7, 7, 7),
                borderRadius: BorderRadius.circular(12),
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
          Login_4UI(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.facebook,
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.85,
                    MediaQuery.of(context).size.width * 0.12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: Color(0xFF3B5998),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.google,
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.85,
                    MediaQuery.of(context).size.width * 0.12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: Color(0xFF3B5998),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.apple,
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 0.85,
                    MediaQuery.of(context).size.width * 0.12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  backgroundColor: Color(0xFF3B5998),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account? ',
                  style: GoogleFonts.itim(fontWeight: FontWeight.w400),
                ),
                Text(
                  'Register Now',
                  style: GoogleFonts.itim(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color.fromARGB(255, 129, 240, 221),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Login_4UI extends StatelessWidget {
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
            " Or Login with ",
            style: GoogleFonts.itim(
                color: Colors.black, fontWeight: FontWeight.w600),
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
