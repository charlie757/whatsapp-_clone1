import 'package:firebasepdf/widget2/ClassXII.dart';
import 'package:flutter/material.dart';

class EnglishPage extends StatelessWidget {
  const EnglishPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white12,
      width: width,
      height: height,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ClassXII()));
            },
            child: Cards("XII", "Class XII", true),
          ),
          InkWell(onTap: () {}, child: Cards("XI", "Class XI", false)),
          InkWell(onTap: () {}, child: Cards("X", "Class X", true)),
          InkWell(onTap: () {}, child: Cards("IX", "Class IX", false)),
          InkWell(onTap: () {}, child: Cards("VIII", "Class VIII", true)),
          InkWell(onTap: () {}, child: Cards("VII", "Class VII", false)),
          InkWell(onTap: () {}, child: Cards("VI", "Class VI", true)),
          InkWell(onTap: () {}, child: Cards("V", "Class V", false)),
          InkWell(onTap: () {}, child: Cards("IV", "Class IV", false)),
          InkWell(onTap: () {}, child: Cards("III", "Class III", true)),
          InkWell(onTap: () {}, child: Cards("II", "Class II", false)),
          InkWell(onTap: () {}, child: Cards("I", "Class I", true)),
        ],
      ),
    );
  }

  Widget Cards(String number, String classname, bool color) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: color ? Colors.orange : Colors.red,
            child: Text(
              number,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Text(classname)
        ],
      ),
    );
  }
}
