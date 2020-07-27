import 'package:eyex_ui/data/tempdata.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../config.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(child: MAIN_BACK()),
        Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: Align(alignment: Alignment.bottomCenter, child: BOTTOM_NAV()),
        )
      ]),
    );
  }
}

class BOTTOM_NAV extends StatelessWidget {
  String imgUrl = "assets/images/user.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0.5),
            color: Colors.black26,
            blurRadius: 5,
            spreadRadius: 2
          )
        ],
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                icon: Icon(
                  Icons.home,
                  size: 28,
                ),
                onPressed: () {}),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                icon: Icon(
                  Icons.search,
                  size: 28,
                ),
                onPressed: () {}),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                icon: Icon(
                  Icons.bookmark_border,
                  size: 28,
                ),
                onPressed: () {}),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                icon: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      width: 28,
                      height: 28,
                      child: Image.asset(
                        imgUrl,
                        fit: BoxFit.cover,
                      )),
                ),
                onPressed: () {}),
          )
        ],
      ),
    );
  }
}

class MAIN_BACK extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size DEVSIZE = MediaQuery.of(context).size;
    return Container(
      height: DEVSIZE.height,
      color: HOME_BACKGROUND,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "eyex",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: MAIN_RED_COLOR),
                ),
                Icon(
                  Icons.location_on,
                  color: MAIN_RED_COLOR,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextField(
                      decoration: InputDecoration.collapsed(hintText: "Search"),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Popular Near you",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View more",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: MAIN_RED_COLOR),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 320,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: foodInfo.length,
                  scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                  itemBuilder: (context, i) => FoodCard(
                        data: foodInfo[i],
                        stars: foodInfo[i]["ratings"],
                      )),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Explore Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View more",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 160,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: categoryInfo.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, i) => CategoryCard(
                        data: categoryInfo[i],
                      )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 320,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: foodInfo.length,
                  scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                  itemBuilder: (context, i) => FoodCard(
                        data: foodInfo[i],
                        stars: foodInfo[i]["ratings"],
                      )),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  Map<String, dynamic> data;
  List<String> stars;
  FoodCard({this.data, this.stars});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0, left: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        height: 320,
        width: 290,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Container(
                width: double.infinity,
                height: 220,
                child: Image.asset(
                  data["img"],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      data["title"],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(data["subtitle"]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          data["ratingNumber"],
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: stars.map((e) {
                            return e == ""
                                ? Icon(
                                    Icons.star_border,
                                    size: 20,
                                    color: Colors.yellow,
                                  )
                                : Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow,
                                  );
                          }).toList(),
                        ),
                        Text(
                          "(${data["rating_people"]})",
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          data["icon"],
                          color: Colors.blueAccent,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          data["time"],
                          style: TextStyle(color: Colors.blueAccent),
                        )
                      ],
                    ),
                  ]),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard({this.data});

  Map data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: data["color"],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                data["icon"],
                size: 70,
                color: Colors.white,
              ),
              Text(
                data["name"],
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "${data["number"]} places",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
