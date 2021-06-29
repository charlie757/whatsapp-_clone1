import 'dart:ui';

import 'package:flutter/material.dart';

class ICSE extends StatelessWidget {
  const ICSE({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("ICSE-ISC"),
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
                          child: card('assets/images/previous.jpg',
                              'Previous year Paper')),
                      InkWell(
                          onTap: () {},
                          child:
                              card('assets/images/green.jpg', 'Sample Paper')),
                      InkWell(
                          onTap: () {},
                          child:
                              card('assets/images/syllabus.jpg', 'Syllabus')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: card('assets/images/bulb.png', 'Concept')),
                      InkWell(
                          onTap: () {},
                          child:
                              card('assets/images/book.jpg', 'Revision Notes')),
                      InkWell(
                          onTap: () {},
                          child:
                              card('assets/images/previous.jpg', 'MCQ Test')),
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
    // BuildContext context;
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
