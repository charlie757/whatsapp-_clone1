import 'package:firebasepdf/widget2/Mathematics%20part1.dart';
import 'package:flutter/material.dart';

class ClassXII extends StatefulWidget {
  const ClassXII({Key key}) : super(key: key);

  @override
  _ClassXIIState createState() => _ClassXIIState();
}

class _ClassXIIState extends State<ClassXII> {
  @override
  Widget build(BuildContext context) {
    bool color;
    return Scaffold(
      appBar: AppBar(
        title: Text("Class XII"),
        actions: [
          IconButton(
              icon: Icon(Icons.search), splashRadius: 20, onPressed: () {}),
          IconButton(
              icon: Icon(Icons.arrow_downward),
              splashRadius: 20,
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Mathematicspart1()));
              },
              child: cards('1', 'Mathematics part- 1', '209.48K views', true)),
          InkWell(
              onTap: () {},
              child: cards('2', 'Mathematics part- 2', '73.35K views', false)),
          InkWell(
              onTap: () {},
              child: cards('3', 'Physics part- 1', '149.39K views', false)),
          InkWell(
              onTap: () {},
              child: cards('4', 'physics part- 2', '61.68K views', true)),
          InkWell(
              onTap: () {},
              child: cards('5', 'Accountancy part- 1', '25.38K views', false)),
          InkWell(
              onTap: () {},
              child: cards('6', 'Accountancy part- 2', '9.72K views', true)),
          InkWell(
              onTap: () {},
              child: cards(
                  '7', 'Comptuerised Accounting System', '3.1K views', false)),
          InkWell(
              onTap: () {},
              child: cards('8', 'Flamingo', '85.51K views', true)),
          InkWell(
              onTap: () {},
              child: cards('9', 'Kaliedoscope', '6.46K views', false)),
          InkWell(
              onTap: () {}, child: cards('10', 'Vistas', '27.26K views', true)),
        ],
      ),
    );
  }

  Widget cards(String number, String name, String view, bool color) {
    return Card(
      child: ListTile(
        title: Text(name),
        leading: CircleAvatar(
          backgroundColor: color ? Colors.orange : Colors.red,
          child: Text(number),
        ),
        trailing: Text(view),
      ),
    );
  }
}
