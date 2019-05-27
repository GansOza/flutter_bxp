import 'package:flutter/material.dart';

class ForgotpwdBowler extends StatefulWidget {
  @override
  _ForgotpwdBowlerState createState() => _ForgotpwdBowlerState();
}

class _ForgotpwdBowlerState extends State<ForgotpwdBowler> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new AnimatedOpacity(
              opacity: flag?1.0:0.0,
                duration: Duration(seconds: 2),
            child: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.red,
            ),),


            new MaterialButton(
                color: Colors.blueGrey,
                child: Text("Click me"),
                onPressed: (){
                  setState(() {
                    flag = !flag;
                  });
                }),


            new AnimatedOpacity(
              opacity: flag?0.0:1.0,
              duration: Duration(seconds: 1),
              child: Container(
                height: 100.0,
                width: 100.0,
                color: Colors.green,
              ),),

          ],
        ),
      ),
    );
  }
}
