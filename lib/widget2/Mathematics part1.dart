import 'package:firebasepdf/PDFWidget/pdf.dart';
import 'package:flutter/material.dart';

class Mathematicspart1 extends StatefulWidget {
  const Mathematicspart1({Key key}) : super(key: key);

  @override
  _Mathematicspart1State createState() => _Mathematicspart1State();
}

class _Mathematicspart1State extends State<Mathematicspart1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mathematics Part-1"),
        actions: [
          IconButton(
              icon: Icon(Icons.arrow_downward),
              splashRadius: 20,
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => PDF()));
              },
              child: cards('1', 'Prelims', '12.95K views'))
        ],
      ),
    );
  }

  Widget cards(String number, String name, String view) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(number),
        ),
        title: Text(name),
        trailing: Text(view),
      ),
    );
  }
}
