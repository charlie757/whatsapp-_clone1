import 'dart:ui';

import 'package:flutter/material.dart';

class NEET extends StatelessWidget {
  const NEET({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("NEET"),
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
                        child: card(
                          'assets/images/download1.jpg',
                          'Physics',
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: card('assets/images/download3.jpg', 'Chemistry'),
                      ),
                      InkWell(
                          onTap: () {},
                          child: card('assets/images/DNA.jpg', 'Biology')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: card('assets/images/previous.jpg',
                              'Previous year Paper')),
                      InkWell(
                          onTap: () {},
                          child: card(
                            'assets/images/mock.jpg',
                            'Mock Test',
                          )),
                      InkWell(
                          onTap: () {},
                          child: card(
                            'assets/images/info.png',
                            'Important Info',
                          )),
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
