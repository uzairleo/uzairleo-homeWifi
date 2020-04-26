import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


  var password="imaandaro302";

  

info(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "About me",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Satisfy'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'I am Uzairleo from Islamia College Peshawar.'
                      'I am a software engineer who love his work '
                      'as well as Flutter Developer expert for '
                      'Android/Cross platform Application.Search'
                      'engine Optimizer as well as Graphics Designer. '
                      ' Still building up or learning some more skills',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      "Contact me",
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Satisfy'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(FontAwesomeIcons.facebook),
                          onPressed: () {
                            _urlLauncher(
                                "https://web.facebook.com/uzairleo.336");
                          }),
                      IconButton(
                          icon: Icon(FontAwesomeIcons.youtube),
                          onPressed: () {
                            _urlLauncher(
                                "https://www.youtube.com/channel/UCbLTPRCpnfaJujz9ApONdAw");
                          }),
                      IconButton(
                          icon: Icon(FontAwesomeIcons.github),
                          onPressed: () {
                            _urlLauncher(
                                "https://github.com/uzairleo/file_saving_flutter-sharedpref-Sqflite-FileHandling-");
                          }),
                      IconButton(
                          icon: Icon(Icons.mail),
                          onPressed: () {
                            _urlLauncher(
                                "https://mail.google.com/mail/u/0/#inbox");
                          }),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
  _urlLauncher(String url)async{
    if(await canLaunch(url))
    {
      await launch(url);
    }else
    {
      throw("Exception founded");
    }


  }
  showPassword(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return  Dialog(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Wifi Key",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Satisfy'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Alert ! please. This is the key "
                "which you can used in all of your devices "
                "for connecting with SSID : iAmUzairLeO. Make "
                "Sure you dont share this with anyOne in case "
                "you share this with anyone then supp-ose he will "
                "exceed the limit and in return your IP adress "
                "will be blocked by the protocol Automatically",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:8.0,top: 3.0),
                    child: Text("Key",
                    style: TextStyle(
                      fontSize:18.0
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      password,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  
                ],
              ),
            ),
          );
        });
  }