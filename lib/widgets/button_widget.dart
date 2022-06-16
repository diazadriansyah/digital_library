import 'package:digital_library/views/home/landing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/const.dart';
import '../views/register/login_view.dart';
import '../views/register/sign_up_view.dart';
import 'onboarding_widget.dart';

class ButtonSignUp extends StatelessWidget {
  const ButtonSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(50),
      child: InkWell(
        splashColor: Colors.grey,
        onTap: (){
          Navigator.push(context, MaterialPageRoute (builder: (context) => SignUpView()));
        },
        child: Container(
          width: 500,
          height: 57,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(0.0, 6.0),
                ),
              ]
          ),
          child: Center(
            child: Text(
              "SIGN UP",
              style: TextStyle(
                fontFamily: "OpenSans",
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonSignIn extends StatelessWidget {
  const ButtonSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(50),
      child: InkWell(
        splashColor: Colors.grey,
        onTap: (){
          Navigator.push(context, MaterialPageRoute (builder: (context) => LoginView()));
        },
        child: Container(
          width: 500,
          height: 57,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(6.0, 0.0),
                ),
              ]
          ),
          child: Center(
            child: Text(
              "SIGN IN",
              style: TextStyle(
                fontFamily: "OpenSans",
                fontSize: 18,
                color: lightblueColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(50),
        child: InkWell(
          splashColor: Colors.grey,
          onTap: (){
            Navigator.push(context, MaterialPageRoute (builder: (context) => LandingPage()));
          },
          child: Container(
            width: 300,
            height: 45,
            decoration: BoxDecoration(
              color: lightblueColor,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(6.0, 0.0),
                ),
              ],
            ),
            child: Center(
              child: Text(
                "LOGIN",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBarButton1 extends StatelessWidget {
  const SearchBarButton1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, right: 25, left: 25),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search For Books',
          hintStyle: TextStyle(
            fontFamily: "OpenSans",
          ),
          fillColor: greyfill,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: lightblueColor, width: 1),
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: lightblueColor),
          ),
          isCollapsed: true,
          contentPadding: EdgeInsets.all(18),
          suffixIcon: InkWell(
            onTap: () {
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Icon(
                Icons.search_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBarButton2 extends StatelessWidget {
  const SearchBarButton2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, right: 25, left: 25),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search For Books',
          hintStyle: TextStyle(
            fontFamily: "OpenSans",
          ),
          fillColor: greyfill,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow, width: 1),
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.yellow),
          ),
          isCollapsed: true,
          contentPadding: EdgeInsets.all(18),
          suffixIcon: InkWell(
            onTap: () {
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Icon(
                Icons.search_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBarButton3 extends StatelessWidget {
  const SearchBarButton3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, right: 25, left: 25),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search For Books',
          hintStyle: TextStyle(
            fontFamily: "OpenSans",
          ),
          fillColor: greyfill,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 1),
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Colors.green),
          ),
          isCollapsed: true,
          contentPadding: EdgeInsets.all(18),
          suffixIcon: InkWell(
            onTap: () {
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Icon(
                Icons.search_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OnBoardNavBtn extends StatelessWidget {
  const OnBoardNavBtn({
    Key? key,
    required this.name,
    required this.onPressed,
  }) : super(key: key);
  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(6),
      splashColor: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.buttonName,
    required this.onPressed,
    required this.bgColor,
  }) : super(key: key);
  final String buttonName;
  final VoidCallback onPressed;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric
        (horizontal: 20,),
      child: SizedBox(
        height: SizeConfig.blockSizeH! * 15.5,
        width: SizeConfig.blockSizeH! * 100,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            buttonName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          style: TextButton.styleFrom
            (backgroundColor: bgColor),
        ),
      ),
    );
  }
}