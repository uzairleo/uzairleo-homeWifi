import 'package:flutter/material.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var switchValue = false;
  var themesetColor = Colors.white;
  var fontsize = 16.0;
  var fontColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themesetColor,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 34, 34),
        title: Text("Settings"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              "Theme",
              style: TextStyle(
                fontSize: fontsize,
                color: fontColor,
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                      // themefunction();
                      (switchValue == true)
                          ? themesetColor = Color.fromARGB(255, 34, 34, 34)
                          : themesetColor = Colors.white;
                      (fontColor == Colors.black)
                          ? fontColor = Colors.white
                          : fontColor = Colors.black;
                    });
                  }),
            ),
            leading: Icon(
              Icons.format_paint,
              color: fontColor,
            ),
          ),
          Divider(),
          ListTile(
              leading: Icon(
                Icons.font_download,
                color: fontColor,
              ),
              title: Text(
                "Large Fonts",
                style: TextStyle(fontSize: fontsize, color: fontColor),
              ),
              onTap: () {
                setState(() {
                  // _save();
                  // _read();
                  (fontsize == 16.0) ? fontsize = 24.0 : fontsize = 16.0;
                });
              }),
        ],
      ),
    );
  }
}