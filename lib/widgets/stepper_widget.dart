import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/const.dart';

class StepperWidget extends StatefulWidget {

  @override
  _StepperWidgetState createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
            child: Theme(
              data: ThemeData(primarySwatch: Colors.red),
              child: Stepper(
                type: StepperType.vertical,
                currentStep: _currentStep,
                controlsBuilder: (BuildContext context, ControlsDetails controls) {
                  return Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton.icon(
                          onPressed: controls.onStepCancel,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(50)
                            ),
                          ),
                          label: Text(
                            'Back',
                            style: TextStyle(
                                fontFamily: "OpenSans",
                                color: Colors.white
                            ),
                          ),
                          icon: Icon(
                            Icons.arrow_back, color:Colors.white,
                          ),
                          textColor: Colors.white,
                          splashColor: Colors.red,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: RaisedButton.icon(
                          onPressed: controls.onStepContinue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(50)
                            ),
                          ),
                          label: Text(
                            'Next',
                            style: TextStyle(
                                fontFamily: "OpenSans",
                                color: Colors.white
                            ),
                          ),
                          icon: Icon(
                            Icons.arrow_forward, color:Colors.white,
                          ),
                          textColor: Colors.white,
                          splashColor: Colors.red,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  );
                },
                onStepTapped: (int step) =>
                    setState(() => _currentStep = step),
                onStepContinue: _currentStep < 2
                    ? () => setState(() => _currentStep += 1)
                    : null,
                onStepCancel: _currentStep > 0
                    ? () => setState(() => _currentStep -= 1)
                    : null,
                steps: <Step>[
                  new Step(
                      title: new Text(
                        'E-Mail'
                        , style: TextStyle(
                          color: Colors.red,
                          fontFamily: "OpenSans"
                      ),
                      ),
                      content: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                            EdgeInsets.only(
                                top: 5, right: 25, left: 25
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: greyfill,
                              prefixIcon: Icon(Icons.email),
                              labelText: 'E-Mail',
                              labelStyle: TextStyle(
                                fontFamily: "OpenSans",
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red, width: 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled
                  ),
                  new Step(
                      title: new Text(
                        'Password'
                        , style: TextStyle(
                          color: Colors.red,
                          fontFamily: "OpenSans"
                      ),
                      ),
                      content: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                            EdgeInsets.only(
                                top: 5, right: 25, left: 25
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: greyfill,
                              prefixIcon: Icon(Icons.lock),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                fontFamily: "OpenSans",
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red, width: 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 1
                          ? StepState.complete
                          : StepState.disabled
                  ),
                ],
              ),
            ),
        ),
        (_currentStep >= 1) ? Container(
          padding:
          EdgeInsets.only(
              left: 70, right: 70, bottom: 25
          ),
          child:  Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(50),
            child: InkWell(
              splashColor: Colors.grey,
              onTap: (){
              },
              child: Container(
                width: 300,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.red,
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
                    "SIGN IN",
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
          width: size.width,
        ) : Container()
      ],
    );
  }
}