import 'package:flutter/material.dart';
import 'package:flutter_bxp/customPaint/topBgg.dart';

import 'login_bowling_center.dart';
class BowlingCenterContactDetails extends StatefulWidget {
  @override
  _BowlingCenterContactDetailsState createState() => _BowlingCenterContactDetailsState();
}

class _BowlingCenterContactDetailsState extends State<BowlingCenterContactDetails> {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'Open Sans', fontSize: 15.0);
    final color = const Color(0xffb4002f);

    //bxp
    final headingNamen = Text(" Bowling Center Contact Details",
      textAlign: TextAlign.center,
      maxLines: 1,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Colors.black
      ),
    );
    final city = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        hintText: "City ",prefixIcon: Icon(Icons.location_city,color: color,),
        //  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0),),
      ),
    );
    final centerAddress = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        hintText: "Center Address",prefixIcon: Icon(Icons.location_on,color: color,),
        //  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0),),
      ),
    );
    final centerWebsite = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        hintText: "Center Website",prefixIcon: Icon(Icons.web,color: color,),
        //  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0),),
      ),
    );

    final googleMapLink = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        hintText: "Google Map Link ",prefixIcon: Icon(Icons.map,color: color,),
        //  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0),),
      ),
    );
    final password = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        hintText: "Password",prefixIcon: Icon(Icons.lock_outline,color: color,),
        //  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0),),
      ),
    );
    final confpwd = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        hintText: "Confirm Password",prefixIcon: Icon(Icons.lock,color: color,),
        //  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0),),
      ),
    );




    final next = ButtonTheme(
        minWidth: 200.0,
        height: 50.0,
        child:
        RaisedButton(splashColor: color,
          padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
          color: color,
          onPressed: () {

            Navigator.push(context, MaterialPageRoute(builder: (context)=> BowlingCenterContactDetails(),));

          },elevation: 10.0,
          child: Text("REGISTER",style: TextStyle(color: Colors.white,fontSize: 20.0),),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        )
    );


    return Scaffold(backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top:35.0,right: 10.0,left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                  child: CustomPaint(
                    painter: DrawCircle(),
                  ),
                ),
                SizedBox(height: 30.0,),
                //login card
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11.0),
                  ),
                  elevation: 22.0,color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height:20.0),

                      headingNamen,
                      Padding(
                        padding: const EdgeInsets.only(
                            left:10.0,top:5,
                            right: 10.0,bottom: 00
                        ),
                        child:city,
                      ),
                      SizedBox(height: 10.0,),
                      Padding(
                        padding: const EdgeInsets.only(
                            left:10.0,top:00,
                            right: 10.0,bottom: 00
                        ),
                        child:centerAddress,
                      ),
                      SizedBox(height: 10.0,),
                      Padding(
                        padding: const EdgeInsets.only(
                            left:10.0,top:00,
                            right: 10.0,bottom: 00
                        ),
                        child:centerWebsite,
                      ),
                      SizedBox(height: 10.0,),
                      Padding(
                        padding: const EdgeInsets.only(
                            left:10.0,top:00,
                            right: 10.0,bottom: 00
                        ),
                        child:googleMapLink,
                      ),
                      SizedBox(height: 10.0,),
                      Padding(
                        padding: const EdgeInsets.only(
                            left:10.0,top:00,
                            right: 10.0,bottom: 00
                        ),
                        child:password,
                      ),
                      SizedBox(height: 10.0,),
                      Padding(
                        padding: const EdgeInsets.only(
                            left:10.0,top:00,
                            right: 10.0,bottom: 00
                        ),
                        child:confpwd,
                      ),


                      SizedBox(height: 10.0, ),
                      Row(
                        children: <Widget>[
                          new Checkbox(value: false, onChanged: addd(),
                          ),
                          new Text("I agree terms and conditions",
                            style: TextStyle(color: Colors.red,
                                decoration: TextDecoration.underline,fontSize: 15.0),)
                        ],
                      )

                    ],),
                ),
                SizedBox(height: 10.0,),
                next,
                SizedBox(height: 10.0,),

              ],
            ),
          ),
        ),
      ),
    );
  }

 addd() {
    print("hi");
  }
}
