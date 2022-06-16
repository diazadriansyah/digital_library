import 'package:digital_library/views/register/register_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';
import '../../widgets/button_widget.dart';
import '../../widgets/onboarding_widget.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentPage = 0;

  PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      duration: Duration(milliseconds: 400),
      height: 8,
      width: currentPage == index ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.lightBlue :
        Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  Future setSeenonboard() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    seenOnboard = await prefs.setBool('seenOnboard', true);
  }

  @override
  void initState() {

    super.initState();
    setSeenonboard();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onboardingContents.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    SizedBox(
                      height: sizeV * 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Image(
                              image: AssetImage(
                                onboardingContents[index].image,
                              ),
                              height: 300.0,
                              width: 300.0,
                            ),
                          ),
                          SizedBox(height: 30.0,),
                          Text(
                            onboardingContents[index].title,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.black
                            ),
                          ),
                          SizedBox(height: 15.0,),
                          Text(
                            onboardingContents[index].RichText,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.blueGrey
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 100,),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          currentPage == onboardingContents.length - 1
                              ? ButtonWidget(
                            buttonName: 'Get Started',
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)
                                  => RegisterView(),
                                  ));
                            },
                            bgColor: Colors.lightBlue,
                          ) : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OnBoardNavBtn(
                                name: 'Skip',
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)
                                      => RegisterView()));
                                },
                              ),
                              Row(
                                children: List.generate(
                                  onboardingContents.length,
                                      (index) => dotIndicator(index),
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_forward,
                                ),
                                color: Colors.lightBlue,
                                onPressed: () {
                                  _pageController.nextPage(
                                      duration: Duration(milliseconds: 400),
                                      curve: Curves.easeInOut);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}