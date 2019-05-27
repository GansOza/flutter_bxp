import 'package:flutter/material.dart';
import 'package:flutter_bxp/customPaint/topBg.dart';

import 'login_bowler.dart';
class RegistrationBowlertwo extends StatefulWidget {
  @override
  _RegistrationBowlertwoState createState() => _RegistrationBowlertwoState();
}

class _RegistrationBowlertwoState extends State<RegistrationBowlertwo> {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'Open Sans', fontSize: 15.0);
    final color = const Color(0xff00a650);

    final password = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        hintText: " Enter Password",prefixIcon: Icon(Icons.lock_outline,color: color,),
        //  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0),),
      ),
    );
    final conpwd = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
        hintText: " Confirm Password",prefixIcon: Icon(Icons.lock,color: color,),
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

    final register = ButtonTheme(
        minWidth: 200.0,
        height: 50.0,
        child:
        RaisedButton(splashColor: color,
          padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
          color: color,
          onPressed: () {

            Navigator.push(context, MaterialPageRoute(builder: (context)=> BowlerLogin(),));

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

                SizedBox(height: 10.0,),
                //headingNamen,
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
                      SizedBox(height:10.0),
                      Padding(
                        padding: const EdgeInsets.only(
                            left:10.0,top:5,
                            right: 10.0,bottom: 00
                        ),
                        child:Icon(Icons.lock_outline,
                          color: Colors.blueGrey,size: 90.0,),
                      ),
                      SizedBox(height: 10.0,),
                      Padding(
                        padding: const EdgeInsets.only(
                            left:10.0,top:00,
                            right: 10.0,bottom: 00
                        ),
                        child:Text("Create Your Password"),
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
                        child:conpwd,
                      ),
                      SizedBox(height: 10.0,),
                      SizedBox(height: 0.0, ),

                      Row(
                        children: <Widget>[
                         new Checkbox(value: false, onChanged: addd(),
                         ),
                          new Text("I agree terms and conditions",
                            style: TextStyle(color: Colors.red,
                                decoration: TextDecoration.underline,fontSize: 15.0),)
                        ],
                      )



                    ],
                  ),
                ),

                SizedBox(height: 10.0,),
                register,
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

  addd() {
    print("clicked");
 }
}
