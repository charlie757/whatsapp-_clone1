import 'package:flutter/material.dart';

import 'EnglishPage.dart';

class NewBookPage extends StatefulWidget {
  const NewBookPage({Key key}) : super(key: key);

  @override
  _NewBookPageState createState() => _NewBookPageState();
}

class _NewBookPageState extends State<NewBookPage>
    with SingleTickerProviderStateMixin {
  TabController tb;

  ScrollController _scrollController;
  void initState() {
    tb = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverSafeArea(
                  sliver: SliverAppBar(
                // snap: true,
                title: new Text("NCERT New Books(2020-21)"),
                pinned: true,
                floating: true,
                primary: true,
                forceElevated: innerBoxIsScrolled,
                bottom: new TabBar(
                  indicatorColor: Colors.red,
                  tabs: <Tab>[
                    new Tab(text: "ENGLISH"),
                    new Tab(text: "HINDI"),
                    Tab(text: "URDU")
                  ],
                  controller: tb,
                ),
              )),
            )
          ];
        },
        body: new TabBarView(
          children: <Widget>[EnglishPage(), Text("Enlgish"), Text("Enlgish")],
          controller: tb,
        ),
      ),
    );
  }
}
