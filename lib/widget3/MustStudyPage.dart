import 'dart:ui';

import 'package:flutter/material.dart';

class MustStudayPage extends StatelessWidget {
  const MustStudayPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Must Study"),
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
              // height: 20,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: card(
                            'assets/images/mock.jpg',
                            'Mock Test',
                          )),
                      InkWell(
                          onTap: () {},
                          child: card('assets/images/download.jpg',
                              'Competitive Exam')),
                      InkWell(
                          onTap: () {},
                          child: card('assets/images/video.jpg', 'Videos')),
                    ],
                  )
                ],
              ),
            ),
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
