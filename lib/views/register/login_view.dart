
import 'package:digital_library/views/home/home_view.dart';
import 'package:digital_library/views/register/register_view.dart';
import 'package:digital_library/views/register/sign_up_view.dart';
import 'package:flutter/material.dart';

import '../../constants/const.dart';
import '../../widgets/button_widget.dart';
import '../home/library_view.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute (builder: (context) => RegisterView()));
            },
            icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Stack(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          SizedBox(height: 40,),
                          Padding(
                            padding: EdgeInsets.only(right: 201),
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: EdgeInsets.only(right: 228),
                            child: Text(
                              "Welcome User !",
                              style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontSize: 17,
                                  color: Colors.grey[700]
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: EdgeInsets.only(right: 55),
                            child: Text(
                              "Login First If You Already Have An Account",
                              style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontSize: 17,
                                  color: Colors.grey[700]
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 85, left: 20, right: 20,
                        ),
                        child: Container(
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                                spreadRadius: 2,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding:
                            EdgeInsets.only(
                                top: 30, right: 25, left: 25
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: greyfill,
                                        prefixIcon: Icon(Icons.person),
                                        labelText: 'Username',
                                        labelStyle: TextStyle(
                                          fontFamily: "OpenSans",
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: lightblueColor, width: 1),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(50),
                                          borderSide: BorderSide(color: lightblueColor),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    TextFormField(
                                      obscureText: _isObscure,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: greyfill,
                                        labelText: 'Password',
                                        labelStyle: TextStyle(
                                          fontFamily: "OpenSans",
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: lightblueColor, width: 1),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(50),
                                          borderSide: BorderSide(color: lightblueColor),
                                        ),
                                        prefixIcon: Icon(Icons.lock),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            _isObscure ? Icons.visibility : Icons.visibility_off,
                                            color: Colors.grey.withOpacity(0.4),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _isObscure = !_isObscure;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    ButtonLogin(),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Divider(
                                            height: 30,
                                            thickness: 1,
                                            indent: 2,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          " Or sign in with ",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "OpenSans",
                                          ),
                                        ),
                                        Expanded(
                                          child: Divider(
                                            height: 30,
                                            thickness: 1,
                                            endIndent: 2,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: OutlinedButton(
                                            child: Padding(
                                              padding: EdgeInsets.all(12),
                                              child: Image.asset(
                                                "assets/images/icons/facebook.png",
                                                height: 24,
                                              ),
                                            ),
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(16),
                                                ),
                                              ),
                                            ),
                                            onPressed: null,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Expanded(
                                          child: OutlinedButton(
                                            child: Padding(
                                              padding: EdgeInsets.all(12),
                                              child: Image.asset(
                                                "assets/images/icons/google.png",
                                                height: 24,
                                              ),
                                            ),
                                            style: ButtonStyle(
                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(16.0),
                                                ),
                                              ),
                                            ),
                                            onPressed: null,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                        height: 15
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Dont Have Account ? ',
                                          style: TextStyle(
                                            fontFamily: "OpenSans",
                                            color: Colors.black,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(
                                                context, MaterialPageRoute(
                                              builder: (context) => SignUpView()
                                          ),
                                          );
                                            },
                                          child: Text(
                                            'Sign Up',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontFamily: "OpenSans",
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}