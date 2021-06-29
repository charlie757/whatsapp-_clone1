import 'dart:ui';

import 'package:flutter/material.dart';

class CBSE extends StatelessWidget {
  const CBSE({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("CBSE"),
              Text("Change Position",
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                  ))
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Stack(
          children: [
            Container(
              height: 250,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {},
                          child:
                              card('assets/images/green.jpg', 'Sample Paper')),
                      InkWell(
                          onTap: () {},
                          child: card(
                              'assets/images/previous.jpg', 'Previous Year')),
                      InkWell(
                          onTap: () {},
                          child: card('assets/images/mock.jpg', 'Value Based')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {},
                          child:
                              card('assets/images/book2.jpg', 'CBSE Syllabus')),
                      InkWell(
                          onTap: () {},
                          child: card('assets/images/bulb.png', 'Concept')),
                      InkWell(
                          onTap: () {},
                          child:
                              card('assets/images/book4.jpg', 'New Revision')),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                left: width / 2 - 30,
                top: 205,
                child: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Icon(Icons.keyboard_arrow_down_sharp),
                )),
          ],
        ),
      ],
    );
  }

  Widget card(String img, String name) {
    return Container(
      width: window.physicalSize.width / 2 - 250,
      height: 110,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image.asset(
                img,
                height: 50,
              ),
            ),
            Text(name, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
