import 'package:flutter/material.dart';
import 'package:login_project/LoginPage.dart';
import 'package:login_project/RegisterPage.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var column = Column(
      children: [
        Image.asset(
          "assets/images/logo2.png",
          width: size.width * 0.8,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
          width: size.width * 0.8,
          child: OutlineButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(33)),
              borderSide: BorderSide(
                color: Colors.white,
                width: 5,
              ),
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 23),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                }));
              }),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          width: size.width * 0.8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(29),
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              color: Colors.white,
              child: Text("Sign Up",
                  style: TextStyle(color: Color(0xff0A0909), fontSize: 23)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RegisterPage();
                }));
              },
            ),
          ),
        )
      ],
    );
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Man.jpg"),
                    fit: BoxFit.cover)),
          ),
          Opacity(
            opacity: 0.7,
            child: Container(
              decoration: BoxDecoration(color: Color(0xff0A0909)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 80, 0, 0),
            child: Center(
              child: column,
            ),
          )
        ],
      ),
    );
  }
}
