import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

List<Map<String,dynamic>> categoryInfo = [
  {
    "icon": Icons.local_bar,
    "number": 22234,
    "name": "Bars",
    "color": Color.fromRGBO(228, 69, 79, 1)
  },
  {
    "icon": FontAwesome.coffee,
    "number": 765,
    "name": "Coffee Shop",
    "color": Color.fromRGBO(86, 83, 212, 1)
  },
  {
    "icon": Icons.restaurant,
    "number": 226,
    "name": "Restaurants",
    "color": Color.fromRGBO(9, 166, 145, 1)
  },
  {
    "icon": Icons.local_pizza,
    "number": 134,
    "name": "Snack Shop",
    "color": Color.fromRGBO(252, 163, 63, 1)
  },
];

List<Map<String,dynamic>> foodInfo = [
  {
    "img": "assets/images/burger.jpeg",
    "ratingNumber": "3.8",
    "ratings":[
      "*","*","*","",""
    ],
    "rating_people": 123,
    "title":"Mc Donald's - Osu",
    "subtitle":"Western cusine, Fast Food Burger",
    "icon":Icons.directions_walk,
    "time": "30 min"
  },
  {
    "img": "assets/images/sandwich.jpg",
    "ratingNumber": "4.0",
    "ratings":[
      "*","*","*","*",""
    ],
    "rating_people": 203,
    "title":"KFC - Asokwa",
    "subtitle":"Western cusine, Sandwich",
    "icon":Icons.directions_car,
    "time": "2 hrs"
  },
  {
    "img": "assets/images/barbecue.jpg",
    "ratingNumber": "3.5",
    "ratings":[
      "*","*","*","",""
    ],
    "rating_people": 93,
    "title":"Holy Mary - Santasi",
    "subtitle":"Western cusine, Barbecue",
    "icon":Icons.directions_walk,
    "time": "15 min"
  },
  {
    "img": "assets/images/pizza.jpg",
    "ratingNumber": "4.5",
    "ratings":[
      "*","*","*","*",""
    ],
    "rating_people": 421,
    "title":"Pizzaman - KNUST",
    "subtitle":"Western cusine, Pizza",
    "icon":Icons.directions_walk,
    "time": "45 min"
  },
  {
    "img": "assets/images/yam_fries.jpg",
    "ratingNumber": "3.0",
    "ratings":[
      "*","*","*","",""
    ],
    "rating_people": 203,
    "title":"Aboude - TUC",
    "subtitle":"Western cusine, Yam Fries",
    "icon":Icons.directions_walk,
    "time": "12 min"
  },

  {
    "img": "assets/images/jollof.png",
    "ratingNumber": "4.8",
    "ratings":[
      "*","*","*","*",""
    ],
    "rating_people": 403,
    "title":"KFC - Asokwa",
    "subtitle":"Western cusine, Jollof rice",
    "icon":Icons.directions_car,
    "time": "20 min"
  }
];
