import 'dart:ui';

import 'package:flutter/material.dart';

class Scholarship extends StatelessWidget {
  const Scholarship({Key key, this.context}) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Scholarship"),
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
                          child: card('assets/images/NTSE1.jpg', 'NTSE')),
                      InkWell(
                          onTap: () {},
                          child: card('assets/images/IMO.jpg', 'IMO')),
                      InkWell(
                          onTap: () {},
                          child: card('assets/images/KVPY.jpg', 'KVPY')),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: card(
                            'assets/images/NSO.jpg',
                            'NSO',
                          )),
                      InkWell(
                          onTap: () {},
                          child: card(
                              'assets/images/book4.jpg', 'Navodaya Vidyalaya')),
                      InkWell(
                          onTap: () {},
                          child: card('assets/images/green.jpg',
                              'Sainik School (AISSEE)')),
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
