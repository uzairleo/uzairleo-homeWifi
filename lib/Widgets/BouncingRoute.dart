

import 'package:flutter/cupertino.dart';

class BouncingRoute extends PageRouteBuilder{
var page;
  BouncingRoute({this.page}):super(
      transitionDuration: Duration(seconds: 2),
      transitionsBuilder: (BuildContext context,Animation<double> animation,Animation<double> sec,Widget child){
        animation=CurvedAnimation(
          curve: Curves.elasticInOut,
          parent: animation,

        );
        return ScaleTransition(
          scale: animation,
          child: child,
          alignment: Alignment.bottomCenter,);
      },
      pageBuilder: (BuildContext context ,Animation<double> animation,Animation<double> secanimation)
      {
        return page;
      }
  );
}