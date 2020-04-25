import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient:LinearGradient(
                          colors: [Color(0xffff3a5a), Color(0xfffe494d)])
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:90.0),
              circularLogo(),
              SizedBox(height:20.0),
              uzairHomeWifi(),
              SizedBox(height:130.0),
              loadingArea(),
              SizedBox(height:80.0),
              versionInfo(),
            
            ],
          ),
        ),
    );
  }
  versionInfo(){
    return Text("\t\t\t\t\tVersion 1.0 \n @uzairleoSoftware",
    style:TextStyle(
      color: Colors.white
    ));
  }
  loadingArea(){
      return SpinKitDoubleBounce(color: Colors.white60,);
  }
  uzairHomeWifi(){
      return Text("HOMEWIFI",
      style: TextStyle(
        fontSize:32.0,
        fontWeight:FontWeight.bold,
        color: Colors.white,
        fontFamily: 'Satisfy'
      ),);
  }
  circularLogo()
  {
    return CircleAvatar(
      radius: 65,
      backgroundColor: Colors.white70,
      child: CircleAvatar(
        radius: 58,
        child: Image(
          image: AssetImage('Assets/leo.png')),
      ),
    );
  }
}