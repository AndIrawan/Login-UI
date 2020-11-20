import 'package:flutter/material.dart';
import 'package:login_project/LoginPage.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Man.jpg"), fit: BoxFit.cover)),
      ),
      Opacity(
        opacity: 0.7,
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
        ),
      ),
      ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/images/Man.jpg"),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 10, 0, 0),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: size.width * 0.8,
                  ),
                  TextFieldContainer(
                      child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Username",
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.lightBlue,
                        )),
                  )),
                  TextFieldContainer(
                      child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.lightBlue,
                        ),
                        suffixIcon: Icon(Icons.visibility)),
                  )),
                  Container(
                    width: size.width * 0.8,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child: FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          color: Color(0xff0A0909),
                          onPressed: () {},
                          child: Text("Sign Up",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 23))),
                    ),
                  )
                ],
              ),
            ),
          ),
          Opacity(
            opacity: 0.7,
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(color: Colors.black87, fontSize: 17),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                },
                child: Text("Sign In",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    )),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "OR",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/icons/facebook.png",
                        ),
                        fit: BoxFit.cover),
                    border: Border.all(width: 2, color: Colors.black87),
                    shape: BoxShape.circle),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/icons/twitter.png",
                        ),
                        fit: BoxFit.cover),
                    border: Border.all(width: 2, color: Colors.black87),
                    shape: BoxShape.circle),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/icons/google-plus.png",
                        ),
                        fit: BoxFit.cover),
                    border: Border.all(width: 2, color: Colors.black87),
                    shape: BoxShape.circle),
              ),
            ],
          )
        ],
      ),
    ]));
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black26.withOpacity(0.3),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(2, 4),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(29)),
      child: child,
    );
  }
}
