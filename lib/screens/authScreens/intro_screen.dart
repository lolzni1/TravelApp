import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/screens/authScreens/login_screen.dart';
import 'package:travel_app/utils/deminsion.dart';
import 'package:travel_app/widgets/big_text.dart';
import 'package:travel_app/widgets/small_text.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenBodyState();
}

class _IntroScreenBodyState extends State<IntroScreen> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageVale = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.introScreenSlider;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageVale = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: Dimensions.screenHeight,
      child: Column(children: [
        //slider section
        Container(
          margin: EdgeInsets.only(
              top: Dimensions.heigth10, bottom: Dimensions.heigth45),
          height: Dimensions.introScreenSlider,
          child: PageView.builder(
              itemCount: 3,
              itemBuilder: (context, position) {
                return _buildIntroItem(position);
              }),
        ),
        Container(
          margin: EdgeInsets.only(bottom: Dimensions.heigth30),
          child: Column(children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width15, right: Dimensions.width15),
                  padding: EdgeInsets.only(
                      top: Dimensions.heigth15,
                      bottom: Dimensions.heigth15,
                      left: Dimensions.buttonContainerWidth / 2.2,
                      right: Dimensions.buttonContainerWidth / 2.2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Color(0x00CEC9).withOpacity(1.0),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 192, 192, 192),
                            blurRadius: 5.0,
                            offset: Offset(0, 3)),
                        BoxShadow(
                          color: Color.fromARGB(255, 192, 192, 192),
                          offset: Offset(-1, 0),
                        ),
                        BoxShadow(
                          color: Color.fromARGB(255, 192, 192, 192),
                          offset: Offset(1, 0),
                        )
                      ]),
                  child: BigText(
                    size: Dimensions.font16,
                    text: "Log In",
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              height: Dimensions.heigth15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width15, right: Dimensions.width15),
                  padding: EdgeInsets.only(
                      top: Dimensions.heigth15,
                      bottom: Dimensions.heigth15,
                      left: Dimensions.buttonContainerWidth / 2.8,
                      right: Dimensions.buttonContainerWidth / 2.8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 192, 192, 192),
                            blurRadius: 5.0,
                            offset: Offset(0, 3)),
                        BoxShadow(
                          color: Color.fromARGB(255, 192, 192, 192),
                          offset: Offset(0, 0),
                        ),
                        BoxShadow(
                          color: Color.fromARGB(255, 192, 192, 192),
                          offset: Offset(0, 0),
                        )
                      ]),
                  child: BigText(
                    text: "Create Account",
                    size: Dimensions.font16,
                  )),
            ),
          ]),
        )
      ]),
    );
  }

  Widget _buildIntroItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageVale.floor()) {
      var currScale = 1 - (_currPageVale - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageVale.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageVale - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageVale.floor() - 1) {
      var currScale = 1 - (_currPageVale - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
        transform: matrix,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //image
            Container(
              height: Dimensions.introScreenImageHeight,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/LoginSlider1.png"))),
            ),
            //dots
            new DotsIndicator(
              dotsCount: 3,
              position: _currPageVale,
              decorator: DotsDecorator(
                  activeColor: Color(0x00CEC9).withOpacity(1.0),
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0))),
            ),
            // text section
            BigText(
              text: "Plan your trip",
              size: Dimensions.font26 * 1.3,
            ),
            Container(
              child: Column(children: [
                SmallText(
                  text: "Custom and fast planning",
                  color: Colors.black,
                ),
                SmallText(
                  text: "with low price",
                  color: Colors.black,
                ),
              ]),
            )
          ],
        ));
  }
}
