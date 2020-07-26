import 'package:eyex_ui/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'home.dart';

class Login extends StatelessWidget {
  void _navigateToHome(BuildContext context){
    Navigator.push(context, CupertinoPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    //get device size
    final Size DEVSIZE = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: DEVSIZE.width,
        height: DEVSIZE.height,
        color: MAIN_RED_COLOR,
        child: Column(
          children: <Widget>[
            Container(
              height: DEVSIZE.height / 1.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "eyex",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(10), top: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "Hi, Nice to meet you !\n\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          TextSpan(
                            text:
                                "Welcome to eyex, the app for locating your\n",
                            style: TextStyle(color: Colors.black54),
                          ),
                          TextSpan(
                            text: "favorite restaurants.",
                            style: TextStyle(color: Colors.black54),
                          )
                        ])),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              color: DEEP_BLUE_COLOR,
                              onPressed:()=> _navigateToHome(context),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.phone_iphone,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Connect with Phone Number",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )),
                        ),
                        Container(
                          height: 50,
                          child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              color: LIGHT_BLUE_COLOR,
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    FontAwesome.google,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Connect with Google",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
