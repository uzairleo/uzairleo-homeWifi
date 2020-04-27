import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../Screens/DashBoard.dart';
import 'BouncingRoute.dart';

bool cboxValue = false;
var flag = false;

class LicenseWidget extends StatefulWidget {
  @override
  _LicenseWidgetState createState() => _LicenseWidgetState();
}

class _LicenseWidgetState extends State<LicenseWidget> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      // backgroundColor: Colors.transparent,
      child: Container(
        height: 500,
        // width: 400,
        decoration: BoxDecoration(),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0),
              child: Text(
                "LICENSE AGREEMENT",
                style: TextStyle(
                  fontSize: 21.0,
                  // fontWeight: FontWeight.bold
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0),
              child: AutoSizeText(
                  "This application is created for a specific purpose"
                  "that purpose is actually to control the Network data"
                  "and to control the clients Downloads.or limiting the clients "
                  "side network.\n"
                  "This app will work on administration protocols.on the basis of "
                  "which someone can login to this application.Which are of the following.\n"
                  "1- Only registered users login.\n"
                  "2- The maximum data available for downl-   \t\toading is 150-160 mb per da.\n"
                  "3- If someone exceed this limit.The ip address of that particular user will be"
                  "blocked by the HomeWifi Administration automatically.\n"
                  "4- Remember for local survey or streaming you have unlimited data.\n"
                  "5- Remember this license is authorized by the copyright holder.\n"),
// "),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                    // focusColor: Colors.red,
                    value: cboxValue,
                    onChanged: (value) {
                      setState(() {
                        cboxValue = value;
                      });
                    }),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Yes agree to license agreement."),
                    validateText(),
                  ],
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(fontSize: 17),
                    )),
                SizedBox(width: 8.0),
                FlatButton(
                    onPressed: () {
                      if (cboxValue == true && flag==true) {
                        Navigator.push(
                            context, BouncingRoute(page: DashBoard()));
                      }else{
                        setState(() {
                          flag=true;
                        });
                      }
                    },
                    child: Text("Agree",
                        style: TextStyle(color: Colors.blue, fontSize: 17))),
              ],
            )
          ],
        ),
      ),
    );
  }

  validateText() {
    if (flag == true) {
      return Text("select checkbox",style: TextStyle(color:Colors.red),);
    } else {
      return SizedBox();
    }
  }
}
