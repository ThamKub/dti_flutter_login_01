// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, unnecessary_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login2UI extends StatefulWidget {
  const Login2UI({super.key});

  @override
  State<Login2UI> createState() => _Login2UIState();
}

class _Login2UIState extends State<Login2UI> {
  Widget showImage() {
    return Container(
      //color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Image.asset('assets/images/pic1.jpg'),
    );
  }

  Widget showIcon() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image.asset('assets/icon/person02.png'),
    );
  }

  Widget showcontent() {
    return Column(
      children: [
        showImage(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(231, 255, 255, 255),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 65,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Login",
                  style: GoogleFonts.itim(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              Container(
                height: 20,
                width: 20,
                child: Image.asset(
                  'assets/icon/person02.png',
                ),
              ),
              //Icon(
              //Icons.person_outlined,
              //size: 20,
              //)
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Welcome back,Rohit thakur",
                  style: GoogleFonts.itim(fontSize: 15.0),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Stack(
              children: [
                showcontent(),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Enter Your Mobile Number',
            style: GoogleFonts.itim(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 255, 99, 151)),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color.fromARGB(231, 255, 255, 255)),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Number',
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
                  'Change Number ?',
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
                color: Color.fromARGB(255, 255, 99, 151),
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
          SizedBox(
            height: 25,
          ),
          Login_2UI(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                //padding: EdgeInsets.all(20),
                //decoration: BoxDecoration(
                //border: Border.all(width: 2, color: Colors.white),
                //shape: BoxShape.circle),
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    'assets/icon/google.png',
                  ),
                ),
              ),
              Container(
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/icon/google1.png'),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You Dont have an account ? ',
                  style: GoogleFonts.itim(fontWeight: FontWeight.w400),
                ),
                Text(
                  'Sign up',
                  style: GoogleFonts.itim(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
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

class Login_2UI extends StatelessWidget {
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
