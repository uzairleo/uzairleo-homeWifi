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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:50.0),
              circularLogo(),
              uzairHomeWifi(),
              loadingArea(),
              versionInfo(),
            
            ],
          ),
        ),
    );
  }
  versionInfo(){
    return Text("Version 1.0 \n @uzairleoSoftware",
    style:TextStyle(

    ));
  }
  loadingArea(){
      return SpinKitDoubleBounce(color: Colors.grey,);
  }
  uzairHomeWifi(){
      return Text("Uzair-HomeWifi",
      style: TextStyle(
        fontSize:24.0,
        fontWeight:FontWeight.bold,
        color: Colors.black,
        fontFamily: 'Satisfy'
      ),);
  }
  circularLogo()
  {
    return CircleAvatar(
      radius: 75,
      child: CircleAvatar(
        radius: 70,
        child: Image(
          image: AssetImage('Assets/leo.png')),
      ),
    );
  }
}