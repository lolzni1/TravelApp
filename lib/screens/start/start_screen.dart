import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/screens/authScreens/intro_screen.dart';
import 'package:travel_app/utils/deminsion.dart';
import 'package:travel_app/widgets/big_text.dart';
import 'package:travel_app/widgets/small_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Dimensions.screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/startPage/startpagebg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(
              top: Dimensions.height110, bottom: Dimensions.height110),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: <Widget>[
                    Image.asset(
                      "assets/startPage/startPageBuilding.png",
                      height: Dimensions.startPageImgHeight,
                      width: Dimensions.startPageImgWidth,
                    ),
                    SizedBox(
                      height: Dimensions.heigth15,
                    ),
                    BigText(
                      text: "Peshot",
                      size: Dimensions.font20 * 2.5,
                      color: Colors.black,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: Dimensions.heigth20),
                      width: Dimensions.textContainerWidth,
                      height: Dimensions.heigth45,
                      child: Column(children: [
                        SmallText(
                          text: "Welcome to TravelApp",
                          color: Colors.black,
                          size: Dimensions.font26 / 2,
                          height: 1,
                        ),
                        SmallText(
                          text: "Connect with Agencies easily ",
                          color: Color.fromARGB(255, 34, 33, 33),
                          size: Dimensions.font26 / 2,
                          height: 1,
                        ),
                      ]),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroScreen()));
                      },
                      child: Container(
                          margin: EdgeInsets.only(
                              left: Dimensions.width15,
                              right: Dimensions.width15),
                          padding: EdgeInsets.only(
                              top: Dimensions.heigth10,
                              bottom: Dimensions.heigth10,
                              left: Dimensions.buttonContainerWidth / 3,
                              right: Dimensions.buttonContainerWidth / 3),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius20),
                              color: Color(0x00CEC9).withOpacity(1.0)),
                          child: BigText(
                            text: "Let's start",
                            color: Colors.white,
                          )),
                    ),
                    SizedBox(
                      height: Dimensions.heigth20,
                    ),
                    SmallText(
                      text: "Click to continue",
                      color: Colors.black,
                    )
                  ],
                )
              ]),
        ));
  }
}
