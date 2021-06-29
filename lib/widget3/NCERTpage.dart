import 'dart:ui';

import 'package:flutter/material.dart';

import '../widget2/NCERT New Books.dart';

class NCERTPage extends StatelessWidget {
  const NCERTPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("NCERT Books & Solutions"),
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
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NewBookPage()));
                          },
                          child: card(
                            'assets/images/download.jpg',
                            'NCERT New Books (2020-21)',
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: card(
                              'assets/images/syllabus.jpg', 'NCERT Solution'),
                        ),
                        InkWell(
                            onTap: () {},
                            child: card('assets/images/download.jpg',
                                'NCERT Old Books (2020-21)')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {},
                            child:
                                card('assets/images/red.jpg', 'NCERT Notes')),
                        InkWell(
                            onTap: () {},
                            child: card(
                              'assets/images/book4.jpg',
                              'NCERT Example Book',
                            )),
                        InkWell(
                            onTap: () {},
                            child: card(
                              'assets/images/bulb.png',
                              'NCERT Exemple Solution',
                            )),
                      ],
                    )
                  ],
                )),
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
            Text(name,
                textAlign: TextAlign.center,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }
}
