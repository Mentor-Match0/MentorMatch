import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mentor_match/home_signin_widget.dart';
import 'package:mentor_match/create_login.dart';

class MenuFrame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 30.0),
            child: Column(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.handsHelping,
                  color: Color.fromRGBO(245, 48, 111, 1.0),
                  size: 60.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Mentor',
                      style: TextStyle(
                          fontSize: 38.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(245, 48, 111, 1.0)),
                    ),
                    Text(
                      'Match',
                      style: TextStyle(
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Connect with Mentors",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50.0,
                ),
                Expanded(
                  child: PageView(
                    children: <Widget>[
                      CreateLogin(),
                      HomeSignInWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(255, 123, 67, 1.0),
              Color.fromRGBO(245, 50, 111, 1.0),
            ],
          ),
        ),
      ),
    );
  }
}
