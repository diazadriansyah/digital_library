import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/button_widget.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding:  EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 50
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "DIGITAL LIBRARY",
                      style: TextStyle(
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Digital library application to make it easier and help you read books anywhere and anytime",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "OpenSans",
                          color: Colors.grey[700],
                          fontSize: 15
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.2,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/icons/logo.png',
                      ),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    ButtonSignIn(),
                    SizedBox(
                      height: 20,
                    ),
                    ButtonSignUp(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}