import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

var visColor;
var obscureText = true;
var visColor2;
var obscureText2 = true;
// import 'package:uzairleo_homewifi/Screens/Login.dart';
// var email = TextEditingController();
// var pswd = TextEditingController();
// var confPswd = TextEditingController();

class SignUpPage extends StatefulWidget {
  static final String path = "lib/src/pages/login/login7.dart";
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    // email.dispose();
    // pswd.dispose();
    // confPswd.dispose();
    // email.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipPath(
                clipper: WaveClipper2(),
                child: Container(
                  child: Column(),
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0x22ff3a5a), Color(0x22fe494d)])),
                ),
              ),
              ClipPath(
                clipper: WaveClipper3(),
                child: Container(
                  child: Column(),
                  width: double.infinity,
                  height: 230,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0x44ff3a5a), Color(0x44fe494d)])),
                ),
              ),
              ClipPath(
                clipper: WaveClipper1(),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 30),
                      Icon(
                        Icons.verified_user,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(height: 09),
                      Text(
                        "SignUp ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 30),
                      ),
                    ],
                  ),
                  width: double.infinity,
                  height: 230,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffff3a5a), Color(0xfffe494d)])),
                ),
              ),
              BackButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: TextField(
                controller: email,
                onChanged: (String value) {},
                cursorColor: Colors.deepOrange,
                decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(
                        Icons.email,
                        color: Colors.red,
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: TextField(
                obscureText: obscureText2,
                controller: pswd,
                onChanged: (String value) {},
                cursorColor: Colors.deepOrange,
                decoration: InputDecoration(
                    suffix: GestureDetector(
                        child:
                            Icon(Icons.visibility, color: visColor2, size: 16),
                        onTap: () {
                          setState(() {
                            (visColor2 == null)
                                ? visColor2 = Colors.blue
                                : visColor2 = null;
                            (obscureText2 == true)
                                ? obscureText2 = false
                                : obscureText2 = true;
                          });
                        }),
                    hintText: "Password",
                    prefixIcon: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(
                        Icons.lock,
                        color: Colors.red,
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: TextField(
                obscureText: obscureText,
                controller: confPswd,
                onChanged: (String value) {},
                cursorColor: Colors.deepOrange,
                
                decoration: InputDecoration(
                    suffix: GestureDetector(
                        child:
                            Icon(Icons.visibility, color: visColor, size: 16),
                        onTap: () {
                          setState(() {
                            (visColor == null)
                                ? visColor = Colors.blue
                                : visColor = null;
                            (obscureText == true)
                                ? obscureText = false
                                : obscureText = true;
                          });
                        }),
                    hintText: "Confirm Password",
                    prefixIcon: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(
                        Icons.lock,
                        color: Colors.red,
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Color(0xffff3a5a)),
                child: FlatButton(
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  onPressed: () {
                    print("Signup pressed");

                    if (email.text.length > 14 &&
                        pswd.text.length > 4 &&
                        (pswd.text.toString() == confPswd.text.toString())) {
                      Navigator.of(context).pop();
                    } else {
                      showAuthenticationDialog(context);
                    }
                  },
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    print("Login pressed");
                    Navigator.of(context).pop();
                  },
                  child: Text("Login ",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 19.0,
                          decoration: TextDecoration.underline))),
            ],
          )
        ],
      ),
    );
  }
}

class WaveClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 29 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 60);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * 0.6, size.height - 15 - 50);
    var firstControlPoint = Offset(size.width * .25, size.height - 60 - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class WaveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 50);

    var firstEndPoint = Offset(size.width * .7, size.height - 40);
    var firstControlPoint = Offset(size.width * .25, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 45);
    var secondControlPoint = Offset(size.width * 0.84, size.height - 50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
