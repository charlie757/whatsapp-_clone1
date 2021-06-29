import 'dart:ui';

import 'package:firebasepdf/widget3/Books&Solutions.dart';
import 'package:firebasepdf/widget3/CBSE.dart';
import 'package:firebasepdf/widget3/ICSE.dart';
import 'package:firebasepdf/widget3/JEE.dart';
import 'package:firebasepdf/widget3/MustStudyPage.dart';
import 'package:firebasepdf/widget2/NCERT%20New%20Books.dart';
import 'package:firebasepdf/widget3/NCERTpage.dart';
import 'package:firebasepdf/widget3/NEET.dart';
import 'package:firebasepdf/widget3/Scholarship.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool textspan = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          actions: [
            IconButton(
                icon: Icon(Icons.search), splashRadius: 20, onPressed: () {}),
            IconButton(
                icon: Icon(Icons.star), splashRadius: 20, onPressed: () {}),
            IconButton(
                icon: Icon(Icons.share), splashRadius: 20, onPressed: () {}),
          ],
        ),
        drawer: Drawer(),
        body: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              NCERTPage(),
              SizedBox(
                height: 20,
              ),
              BooksPage(),
              SizedBox(
                height: 20,
              ),
              CBSE(),
              SizedBox(
                height: 20,
              ),
              ICSE(),
              SizedBox(
                height: 20,
              ),
              MustStudayPage(),
              SizedBox(
                height: 20,
              ),
              Scholarship(),
              SizedBox(
                height: 20,
              ),
              JEE(),
              SizedBox(
                height: 20,
              ),
              NEET(),
            ],
          ),
        ));
  }
}
