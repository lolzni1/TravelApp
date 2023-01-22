import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/screens/authScreens/form.dart';
import 'package:travel_app/utils/deminsion.dart';
import 'package:travel_app/widgets/big_text.dart';
import 'package:travel_app/widgets/small_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color.fromARGB(255, 253, 253, 253),
          //top
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    top: Dimensions.heigth45,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_rounded),
                      SizedBox(
                        height: Dimensions.heigth30,
                      ),
                      BigText(
                        text: "Log In",
                        size: Dimensions.font16 * 2,
                      ),
                      SizedBox(
                        height: Dimensions.heigth30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: Dimensions.logoHeight,
                            width: Dimensions.logoWidth,
                            padding: EdgeInsets.only(
                                left: Dimensions.width10,
                                right: Dimensions.width15,
                                top: Dimensions.heigth10,
                                bottom: Dimensions.width10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius30),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 128, 128, 128),
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
                            child: Row(children: [
                              Image(
                                image: AssetImage(
                                    "assets/loginScreen/googleLogo.png"),
                                height: Dimensions.heigth30,
                                width: Dimensions.width30,
                                color: null,
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                              ),
                              // ImageIcon(
                              //   AssetImage("assets/loginScreen/googleLogo.png"),
                              //   size: Dimensions.heigth30,

                              // ),
                              SizedBox(
                                width: Dimensions.width20,
                              ),
                              BigText(
                                text: "Google",
                                size: Dimensions.font16,
                              )
                            ]),
                          ),
                          Container(
                            height: Dimensions.logoHeight,
                            width: Dimensions.logoWidth,
                            padding: EdgeInsets.only(
                                left: Dimensions.width10,
                                top: Dimensions.heigth10,
                                bottom: Dimensions.width10,
                                right: Dimensions.width15),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 0, 106, 206),
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius30),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 128, 128, 128),
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
                            child: Row(children: [
                              ImageIcon(
                                AssetImage(
                                    'assets/loginScreen/facebookLogo.png'),
                                size: Dimensions.heigth30,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: Dimensions.width20,
                              ),
                              BigText(
                                text: "Facebook",
                                size: Dimensions.font16,
                                color: Colors.white,
                              )
                            ]),
                          ),
                        ],
                      ),
                    ]),
              ),
              SizedBox(
                height: Dimensions.heigth30,
              ),
              SmallText(
                text: "Or log in using",
                color: Colors.black,
                size: Dimensions.font26 / 2,
              ),
              Container(
                height: Dimensions.heigth45 * 1.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius30),
                    color: Colors.white,
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
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.only(bottom: Dimensions.heigth10 / 2),
                child: Container(
                  // height: Dimensions.heigth30,
                  margin: EdgeInsets.only(left: Dimensions.width45),
                  child: TextField(
                    
                    decoration: InputDecoration(
                        hintText: 'Mail', border: InputBorder.none),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
