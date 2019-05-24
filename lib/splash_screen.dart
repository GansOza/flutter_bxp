import 'package:flutter/material.dart';

import 'bowler/login_bowler.dart';
import 'bowlingCenter/login_bowling_center.dart';
import 'customPaint/lineHorizontal.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {

    final centerr = const Color(0xffb4002f);
    final textName=Text("Bowling Made Easy",style:
    TextStyle(color: Colors.black,fontSize: 19.0,fontWeight: FontWeight.bold,));

    final color = const Color(0xff00a650);
    TextStyle style = TextStyle(fontFamily: 'Open Sans', fontSize: 20.0);

    final bowler = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: color,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 15.0),
        onPressed: () {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BowlerLogin()),
          );

        },
        child: Text("Bowler",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final center = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(50.0),
      color: centerr,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 15.0),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginBowlingCenter()),
          );
      },
        child: Text("Bowling Center",
          textAlign: TextAlign.center,
          style: style.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold),),),
    );


    return Scaffold(
      backgroundColor:Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
/*
                  SizedBox(
                    height: 190.0,
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),*/
              Image.asset(
                "assets/images/logo.png",),

                   textName,
                  SizedBox(height: 15.0,),
                  CustomPaint(painter: Drawhorizontalline(true)),

                  SizedBox(height: 15.0),
                  bowler,
                  SizedBox(height: 15.0),
                  center,
                  SizedBox(height: 15.0),

                  CustomPaint(painter: Drawhorizontalline(true)),
                 // registraiton,
                ],
              ),
            ),
          ),),
      ),
    );
  }
}
