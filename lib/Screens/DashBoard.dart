import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

  var starIcon=Icons.star_border;
  var lightIcon=FontAwesomeIcons.lightbulb;
class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView(
          children: <Widget>[
              SizedBox(height: 10,),
              _utilityRow(),
              SizedBox(height: 40,),
              _connectivitySymbol(),
              SizedBox(height: 20,),
              _connectButton(),
              SizedBox(height: 16,),
              _timer(),
              SizedBox(height: 0,),
              _warning()
            
          ],
        ),
      ),
    );
  }
  _warning(){
    return Container(
      width: 360,
      height: 100,
      decoration: BoxDecoration(
        // border:Border.all()
         border: Border.all(color:Colors.black87,),
                  color: Color.fromARGB(255, 248, 216, 216),
                  borderRadius: BorderRadius.circular(0.0)
               
        
      ),
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
                decoration: BoxDecoration(
                  // border: Border.all(color:Colors.black87,),
                  // color: Color.fromARGB(255, 236, 131, 131),
                  // borderRadius: BorderRadius.circular(8.0)
                ),
                ),
          ),
          Positioned(
            left: 03,
            top: 0,
            child: Icon(Icons.warning,size: 38,)),
            Positioned(
              left: 40.0,
              top: 10,
                          child: Text('Warning !', style: TextStyle(fontWeight: FontWeight.bold),  ),
            ),
            Positioned(
              left: 48,
              top:28,
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
  _timer(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("  You are "),
              Text(" connected ",style:TextStyle(fontWeight:FontWeight.bold)),
              Text(" to "),
              Text("iAmUzairLeO",style:TextStyle(fontWeight:FontWeight.bold))
            ],
          ),
          SizedBox(height:10.0),
          Text("Duration : 00:00:00",style: TextStyle(
            fontSize: 16
          ),),
          // Text(""),  
      ],
    );
  }
  _connectButton(){
    return Center(
      child: Container(
       width:180,
       height: 60,
       decoration: BoxDecoration(
         color:Colors.blue,
         border: Border.all(color: Colors.black87,width:0.8),
         borderRadius: BorderRadius.circular(10.0)
       ),
        child: InkWell(
          child: Center(child: Text("Connect",style: TextStyle(
            color: Colors.white,fontSize: 18.0
          ),)),

        ),
      ),
    );
  }
  _connectivitySymbol(){
    return CircleAvatar(
      radius: 110,
      backgroundColor: Color.fromARGB(255, 218, 240, 181),
      child: CircleAvatar(
        radius: 80,
        
          backgroundColor: Color.fromARGB(255, 168, 238, 46),
        child: CircleAvatar(
          radius: 70,
          child: Image.asset('Assets/plus.png'),
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
            icondata: starIcon,
            onpressed: () {
              setState(() {
                (starIcon == Icons.star_border)
                    ? starIcon = Icons.star
                    : starIcon = Icons.star_border;
              });
            }),
        _urowbuttons(
            icondata: lightIcon,
            onpressed: () {
              setState(() {
                (lightIcon == FontAwesomeIcons.lightbulb)
                    ? lightIcon = FontAwesomeIcons.solidLightbulb
                    : lightIcon = FontAwesomeIcons.lightbulb;

                // (themeColor == Color.fromARGB(255, 34, 34, 34))
                //     ? themeColor = Colors.green
                //     //  Color.fromARGB(255, 107, 62, 193)
                //     : themeColor = Color.fromARGB(255, 34, 34, 34);
              });
            }),
        _urowbuttons(
            icondata: Icons.settings,
            onpressed: () {
            //   Navigator.push(
            //       context, BouncingPageRoute(routeWidget: Settings()));
            } ),
        _urowbuttons(
            icondata: Icons.info,
            onpressed: () {
              // _info();
            })
      ],
    );
  }

  _urowbuttons({IconData icondata, Function onpressed}) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 12.0, right: 12.0, top: 0.0, bottom: 0.0),
      child: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 17, 17, 17),
        radius: 29.0,
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