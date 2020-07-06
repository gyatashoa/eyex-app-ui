import 'package:eyex_ui/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Login extends StatelessWidget {
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Hi, Nice to meet you !",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Welcome to eyex, the app for locating your",
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(
                          "favorite restaurants.",
                          style: TextStyle(color: Colors.black54),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              color: DEEP_BLUE_COLOR,
                              onPressed: () {},
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
                        SizedBox(
                          height: 20,
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
