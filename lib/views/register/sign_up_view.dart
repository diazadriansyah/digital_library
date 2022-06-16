
import 'package:digital_library/views/register/register_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/stepper_widget.dart';


class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
                            padding: EdgeInsets.only(right: 188),
                            child: Text(
                              "Sign Up",
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
                            padding: EdgeInsets.only(right: 70),
                            child: Text(
                              "Register Here If You Don't Have Account",
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
                            top: 60, left: 20, right: 20
                        ),
                        child: Container(
                          height: 430,
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
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "REGISTER FORM",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "OpenSans",
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Two steps to register",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "OpenSans",
                                  fontSize: 15,
                                ),
                              ),
                              Expanded(
                                  child: StepperWidget()
                              ),
                            ],
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