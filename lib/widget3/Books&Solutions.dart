import 'dart:ui';

import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Books & Solutions"),
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
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: card(
                          'assets/images/download.jpg',
                          'RD Sharma Solution',
                        )),
                    InkWell(
                        onTap: () {},
                        child: card(
                          'assets/images/book.jpg',
                          'HC Verma Solution',
                        )),
                    InkWell(
                        onTap: () {},
                        child: card(
                          'assets/images/book1.jpg',
                          'RS Agarwal Solution',
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () {},
                        child: card(
                            'assets/images/book2.jpg', 'TS Grewal Solution')),
                    InkWell(
                        onTap: () {},
                        child: card(
                            'assets/images/book4.jpg', 'DK Goel Solution')),
                    InkWell(
                        onTap: () {},
                        child: card(
                            'assets/images/syllabus.jpg', 'TR Jain Solution')),
                  ],
                )
              ]),
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
