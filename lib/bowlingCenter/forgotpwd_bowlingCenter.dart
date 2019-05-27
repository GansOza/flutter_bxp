import 'package:flutter/material.dart';
import 'package:flutter_bxp/customPaint/topBgg.dart';

import 'login_bowling_center.dart';

class ForgotPwd_bowlingCenter extends StatefulWidget {
  @override
  _ForgotPwd_bowlingCenterState createState() => _ForgotPwd_bowlingCenterState();
}

class _ForgotPwd_bowlingCenterState extends State<ForgotPwd_bowlingCenter> {
  @override
  Widget build(BuildContext context) {

    TextStyle style = TextStyle(fontFamily: 'Open Sans', fontSize: 15.0);

    final color = const Color(0xffb4002f);
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

    final email = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        hintText: " Email ",prefixIcon: Icon(Icons.email,color: color,),
        //  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0),),
      ),
    );
    final sendEmail = ButtonTheme(
        minWidth: 200.0,
        height: 50.0,
        child:
        RaisedButton(splashColor: color,
          padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
          color: color,
          onPressed: () {

            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginBowlingCenter(),));

          },elevation: 10.0,
          child: Text("SEND EMAIL",style: TextStyle(color: Colors.white,fontSize: 20.0),),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        )
    );


    return new Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top:35.0,right: 10.0,left: 10.0),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,


              children: <Widget>[
                SizedBox(
                  height: 15.0,
                  child: CustomPaint(
                    painter: DrawCircle(),
                  ),
                ),
                SizedBox(height: 10.0,),
                headingNamen,
                SizedBox(
                  child: Image.asset("assets/images/logo.png",height: 100.0,width: 100.0,),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11.0),
                  ),
                  elevation: 22.0,color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height:10.0),
                      Padding(
                        padding: const EdgeInsets.only(
                            left:10.0,top:5,
                            right: 10.0,bottom: 00
                        ),
                        child:Icon(Icons.mail_outline,
                          color: Colors.blueGrey,size: 125.0,),
                      ),
                      SizedBox(height: 10.0,),
                      Padding(
                        padding: const EdgeInsets.only(
                            left:10.0,top:00,
                            right: 10.0,bottom: 00
                        ),
                        child:Text("Forgot Password"),
                      ),
                      SizedBox(height: 10.0,),
                      Padding(
                        padding: const EdgeInsets.only(
                            left:10.0,top:00,
                            right: 10.0,bottom: 00
                        ),
                        child:email,
                      ),
                      SizedBox(height: 10.0,),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                sendEmail,
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
                          => LoginBowlingCenter()),);
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
