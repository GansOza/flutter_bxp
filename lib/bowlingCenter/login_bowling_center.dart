import 'package:flutter/material.dart';
import 'package:flutter_bxp/bowler/forgotPwe_bowler.dart';
import 'package:flutter_bxp/bowler/registration_bowler.dart';
import 'package:flutter_bxp/customPaint/topBgg.dart';

class LoginBowlingCenter extends StatefulWidget {
  @override
  _LoginBowlingCenterState createState() => _LoginBowlingCenterState();
}

class _LoginBowlingCenterState extends State<LoginBowlingCenter> {
  @override
  Widget build(BuildContext context) {
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
    //facebook and google
    final facebook = RaisedButton(
      onPressed: (){},
      color: Colors.white,
      child: Text("Facebook",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
            color: Colors.blue
        ),
      ),
    );
    final google = RaisedButton(
      onPressed: (){},
      color: Colors.white,
      child: Text("Google",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
            color: Colors.redAccent
        ),
      ),
    );
    TextStyle style = TextStyle(fontFamily: 'Open Sans', fontSize: 15.0);
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        hintText: " Email",prefixIcon: Icon(Icons.email,color: Colors.blueGrey,),
        //  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0),),
      ),
    );
    final color = const Color(0xffb4002f);
    final passwordField = TextField(

      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
          hintText: "Password",prefixIcon: Icon(Icons.lock_outline,color: Colors.blueGrey,)
        //border:OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );
    final loginButon = ButtonTheme(
        minWidth: 200.0,
        height: 50.0,
        child:
        RaisedButton(splashColor: color,
          padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
          color: color,
          onPressed: () {},elevation: 10.0,
          child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 20.0),),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        )
    );



    return Scaffold(
      body:SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top:35.0,right: 25.0,left: 25.0),
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

                  SizedBox(height: 10,),
                  //logo
                  SizedBox(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 45.0,
                      child: Image.asset("assets/images/logo.png",),
                    ),),
                  //login card
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 18.0,color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height:30.0),
                        SizedBox(height: 50.0,
                          child: Text("LOGIN",
                            style: TextStyle(fontSize: 20.0,
                                color: Colors.blueGrey
                            ),),),

                        Padding(
                          padding: const EdgeInsets.only(
                              left:10.0,top:00,
                              right: 10.0,bottom: 00
                          ),
                          child:emailField,
                        ),



                        SizedBox(height: 5.0,),

                        Padding(
                          padding: const EdgeInsets.only(
                              left:10.0,top:00,
                              right: 10.0,bottom: 00
                          ),
                          child:passwordField,
                        ),

                        SizedBox(height: 20.0,),
                        loginButon,
                        SizedBox(height: 15.0, ),
/*
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[

                            facebook,
                            Text("|",style: TextStyle(color: color),),
                            google

                          ],
                        ),*/

                        SizedBox(height: 10.0, ),

                      ],),
                  ),

                  SizedBox(height: 30.0,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      new GestureDetector(
                        onTap: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)
                            => RegistrationBowler()),
                          );

                        },
                        child: Text("     New Account",
                          style: TextStyle(color:color),),
                      ),

                      Text("     |",style: TextStyle(color: color),),

                      new GestureDetector(
                        onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                        => ForgotpwdBowler()),);
                        },
                        child: Text("Forgot Password",
                          style: TextStyle(color: color),),
                      ),









                    ],
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

