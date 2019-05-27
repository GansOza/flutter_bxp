import 'package:flutter/material.dart';
import 'package:flutter_bxp/bowler/registration_bowlerTwo.dart';
import 'package:flutter_bxp/customPaint/topBg.dart';
import 'forgotPwe_bowler.dart';
import 'login_bowler.dart';


class RegistrationBowler extends StatefulWidget {
  @override
  _RegistrationBowlerState createState() => _RegistrationBowlerState();
}

class _RegistrationBowlerState extends State<RegistrationBowler> {
  @override
  Widget build(BuildContext context) {

    TextStyle style = TextStyle(fontFamily: 'Open Sans', fontSize: 15.0);
    final color = const Color(0xff00a650);

    //bxp
    final headingNamen = Text(" Bowling Express Pay",
      textAlign: TextAlign.center,
      maxLines: 1,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          color: Colors.white
      ),
    );
    final firstNameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        hintText: " First Name",prefixIcon: Icon(Icons.person,color: color,),
        //  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0),),
      ),
    );
    final lastNameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        hintText: " Last Name",prefixIcon: Icon(Icons.person,color: color,),
        //  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0),),
      ),
    );
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        hintText: " Email",prefixIcon: Icon(Icons.email,color: color,),
        //  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0),),
      ),
    );
    final contactNumber = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        hintText: " Contact Number",prefixIcon: Icon(Icons.phone_android,color: color,),
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

          Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrationBowlertwo(),));

          },elevation: 10.0,
          child: Text("NEXT",style: TextStyle(color: Colors.white,fontSize: 20.0),),
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
                    headingNamen,
                    //logo
                    SizedBox(
                        child: Image.asset("assets/images/logo.png",height: 100.0,width: 100.0,),
                      ),
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

                            Padding(
                              padding: const EdgeInsets.only(
                                  left:10.0,top:5,
                                  right: 10.0,bottom: 00
                              ),
                              child:firstNameField,
                            ),
                            SizedBox(height: 10.0,),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left:10.0,top:00,
                                  right: 10.0,bottom: 00
                              ),
                              child:lastNameField,
                            ),
                            SizedBox(height: 10.0,),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left:10.0,top:00,
                                  right: 10.0,bottom: 00
                              ),
                              child:emailField,
                            ),
                            SizedBox(height: 10.0,),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left:10.0,top:00,
                                  right: 10.0,bottom: 00
                              ),
                              child:contactNumber,
                            ),
                            SizedBox(height: 10.0,),



                            SizedBox(height: 10.0, ),

                          ],),
                      ),
                    SizedBox(height: 10.0,),
                    next,
                    SizedBox(height: 20.0,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Already have an Account? ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          new GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context)
                                => BowlerLogin()),);
                            },
                            child: Text(" Login",style: TextStyle(color: color,fontSize: 20.0,fontWeight: FontWeight.bold),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
        ),
           );
  }
}

