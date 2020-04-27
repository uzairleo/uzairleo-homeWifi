import 'dart:async';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uzairleo_homewifi/Screens/Setting.dart';
import 'package:uzairleo_homewifi/Widgets/Aboutme.dart';
import 'package:uzairleo_homewifi/Widgets/BouncingRoute.dart';
import 'package:android_intent/android_intent.dart';

import '../Widgets/Aboutme.dart';

var status = 'not';
var starIcon = Icons.star_border;
var lightIcon = FontAwesomeIcons.lightbulb;
var themeColor = Colors.white;
var flag = false;
var connectButton = "Connect";
var circle1 = Color.fromARGB(255, 241, 202, 152);
var circle2 = Color.fromARGB(255, 241, 182, 78);
var circleImage = 'minus';
var bgcolor = Color.fromARGB(255, 255, 51, 0);

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  void initState() {
    super.initState();
  }

  String seconds = "00";
  String minutes = "00";
  String hours = "00";
  var swatch = Stopwatch();
  var dur = Duration(seconds: 1);
  void starttimer() {
    Timer(dur, keeprunning);
  }

  void keeprunning() {
    if (swatch.isRunning) {
      starttimer();
    }
    setState(() {
      hours = swatch.elapsed.inHours.toString().padLeft(2, "0");
      minutes = (swatch.elapsed.inMinutes % 60).toString().padLeft(2, "0");
      seconds = (swatch.elapsed.inSeconds % 60).toString().padLeft(2, "0");
    });
  }

  void startstopwatch() {
    swatch.start();
    starttimer();
  }

  resetAndStopswatch() {
    swatch.reset();
    swatch.stop();
  }

  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text("NO"),
              ),
              SizedBox(height: 16),
              new FlatButton(
                onPressed: () {
                  // Navigator.of(context).pop(true);
                  SystemNavigator.pop();
                },
                child: Text("YES"),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: themeColor,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              _utilityRow(),
              SizedBox(
                height: 40,
              ),
              _connectivitySymbol(),
              SizedBox(
                height: 20,
              ),
              _connectButton(),
              SizedBox(
                height: 16,
              ),
              _timer(),
              SizedBox(
                height: 0,
              ),
              _warning()
            ],
          ),
        ),
      ),
    );
  }

  _warning() {
    return Container(
      width: 360,
      height: 100,
      decoration: BoxDecoration(
          // border:Border.all()
          border: Border.all(
            color: Colors.black87,
          ),
          color: Color.fromARGB(255, 248, 216, 216),
          borderRadius: BorderRadius.circular(0.0)),
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Positioned(
            left: 8.5,
            top: 19,
            child: Container(
              alignment: Alignment.topCenter,
              width: 340,
              height: 90,
              decoration: BoxDecoration(),
            ),
          ),
          Positioned(
              left: 03,
              top: 0,
              child: Icon(
                Icons.warning,
                size: 38,
              )),
          Positioned(
            left: 40.0,
            top: 10,
            child: Text(
              'Warning !',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              left: 48,
              top: 28,
              child: Align(
                alignment: Alignment.center,
                child: Text('Every user have 150mb/day for Downloading. '
                    ' If\nsomebody try to exceed this limit.Their ip address\n'
                    'will be thrown to blacklist automatically '
                    'by flutter\nbolt using network access protocols.'),
              ))
        ],
      ),
    );
  }

  _timer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("  You are "),
            Text(" $status "),
            Text(" connected ", style: TextStyle(fontWeight: FontWeight.bold)),
            Text(" to "),
            Text("iAmUzairLeO", style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(height: 10.0),
        Text(
          "Duration : $hours : $minutes : $seconds",
          style: TextStyle(fontSize: 16),
        ),
        // Text(""),
      ],
    );
  }

  _connectButton() {
    return GestureDetector(
      onTap: () {
        if (flag == false) {
          if (Platform.isAndroid) {
            final AndroidIntent intent =
                new AndroidIntent(action: 'android.settings.WIFI_SETTINGS');
            intent.launch();
          }
        }
        Future.delayed(Duration(seconds: 4), () {
          setState(() {
            (flag == false) ? startstopwatch() : resetAndStopswatch();
            print("future called successfully");
            (status == 'not') ? status = '' : status = 'not';
            (circleImage == 'minus')
                ? circleImage = 'plus'
                : circleImage = 'minus';
            (flag == false) ? flag = true : flag = false;
            (connectButton == 'Connect')
                ? connectButton = "Connected"
                : connectButton = "Connect";
          });
        });
      },
      child: Center(
        child: Container(
          width: 180,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black87, width: 0.8),
              borderRadius: BorderRadius.circular(10.0)),
          child: Center(
              child: Text(
            connectButton,
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          )),
        ),
      ),
    );
  }

  _connectivitySymbol() {
    return CircleAvatar(
      radius: 110,
      backgroundColor:
          (flag == false) ? circle1 : Color.fromARGB(255, 218, 240, 181),
      child: CircleAvatar(
        radius: 80,
        backgroundColor:
            (flag == false) ? circle2 : Color.fromARGB(255, 168, 238, 46),
        child: CircleAvatar(
          radius: 70,
          child: Image.asset('Assets/$circleImage.png'),
          backgroundColor:
              (flag == false) ? bgcolor : Color.fromARGB(255, 119, 187, 0),
        ),
      ),
    );
  }

  _utilityRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _urowbuttons(
            icondata: Icons.vpn_key,
            onpressed: () {
              showPassword(context);
            }),
        _urowbuttons(
            icondata: lightIcon,
            onpressed: () {
              setState(() {
                if (themeColor == Colors.white) {
                  (wifiPassword == 'imaandaro302')
                      ? wifiPassword = 'warkadang336'
                      : wifiPassword = 'imaandaro302';
                }
                (lightIcon == FontAwesomeIcons.lightbulb)
                    ? lightIcon = FontAwesomeIcons.solidLightbulb
                    : lightIcon = FontAwesomeIcons.lightbulb;

                (themeColor == Colors.white)
                    ? themeColor = Colors.grey
                    : themeColor = Colors.white;
              });
            }),
        _urowbuttons(
            icondata: Icons.settings,
            onpressed: () {
              Navigator.push(context, BouncingRoute(page: Settings()));
            }),
        _urowbuttons(
            icondata: Icons.info,
            onpressed: () {
              info(context);
            })
      ],
    );
  }

  _urowbuttons({IconData icondata, Function onpressed}) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 12.0, right: 12.0, top: 0.0, bottom: 0.0),
      child: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 52, 50, 50),
        radius: 26.0,
        child: IconButton(
          icon: Icon(
            icondata,
            color: Colors.white,
          ),
          onPressed: onpressed,
        ),
      ),
    );
  }
}
