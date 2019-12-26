import 'package:flutter/material.dart';
import 'buttons.dart';
import 'titlebar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize(BuildContext context) {
      return MediaQuery.of(context).size;
    }

    double screenHeight(BuildContext context, {double dividedBy = 1}) {
      return screenSize(context).height / dividedBy;
    }

    double screenWidth(BuildContext context, {double dividedBy = 1}) {
      return screenSize(context).width / dividedBy;
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: screenHeight(context, dividedBy: 40),
            vertical: screenWidth(context, dividedBy: 25),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: screenHeight(context, dividedBy: 50),
              ),
              Titlebar(
                title: 'Carify',
              ),
              SizedBox(
                height: screenHeight(context, dividedBy: 50),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Events made easy for charities.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight(context, dividedBy: 20),
              ),
              Image.network(
                "https://yt3.ggpht.com/a/AGF-l7-7KGdyxavrJDjUzyrYRNX0tGq-Jky8cJlKRg=s900-c-k-c0xffffffff-no-rj-mo",
                height: screenHeight(context, dividedBy: 2.5),
              ),
              SizedBox(
                height: screenHeight(context, dividedBy: 20),
              ),
              SizedBox(
                width: screenWidth(context),
                child: OutlineButtonComponent(
                  onPressed: () {},
                  child: Text(
                    'Login with Google',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Poppins",
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  bgColor: Color(0xffa2aab3),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  outlineHeight: 1,
                  outlineColor: Colors.white,
                ),
              ),
              SizedBox(
                height: screenHeight(context, dividedBy: 50),
              ),
              SizedBox(
                width: screenWidth(context),
                child: OutlineButtonComponent(
                  onPressed: () {},
                  child: Text(
                    'Login with Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Poppins",
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  bgColor: Color(0xff4e8cf6),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  outlineHeight: 1,
                  outlineColor: Colors.white,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text(
                    "©copyright 2019",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
