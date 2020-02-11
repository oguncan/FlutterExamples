import 'package:flutter/material.dart';
import 'dart:math' as matematik;
class CollapsableToolbarOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          centerTitle: true,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          //title: Text("SliverAppBar"),
          backgroundColor: Colors.orange,
          expandedHeight: 300,
          pinned: true,
          leading: Icon(Icons.android, size: 36.0),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text("SliverAppBar"),
            background: Image.asset("assets/images/1.jpg", fit: BoxFit.cover),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(sabitWidgets()),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 6),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(5),
          sliver: SliverFixedExtentList(
            itemExtent: 200,
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 10),
          ),
        ),
        // SliverGrid.count(crossAxisCount: 2, children: sabitWidgets(), )
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          delegate: SliverChildListDelegate(sabitWidgets()),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
          ),
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon, childCount: 10),
        )
        // SliverList(),
        // SliverGrid(),
        // SliverGrid.count(crossAxisCount: 2),
        // SliverGrid.extent(maxCrossAxisExtent: 150),
      ],
    );
  }

  Widget _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: rastgeleRenkUret(),
        child: Text(
          "Dinamik Liste $index",
          style: TextStyle(fontSize: 16),
        ),
        alignment: Alignment.center);
  }

  List<Widget> sabitWidgets() {
    return [
      Container(
        height: 100,
        margin: EdgeInsets.only(bottom: 5),
        color: Colors.red,
        child: Text(
          "Sabit Liste",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        alignment: Alignment.center,
      ),
      Container(
          height: 100,
          margin: EdgeInsets.only(bottom: 5),
          color: Colors.blue,
          child: Text(
            "Sabit Liste",
            style: TextStyle(fontSize: 16),
          ),
          alignment: Alignment.center),
      Container(
          height: 100,
          margin: EdgeInsets.only(bottom: 5),
          color: Colors.purple,
          child: Text(
            "Sabit Liste",
            style: TextStyle(fontSize: 16),
          ),
          alignment: Alignment.center),
      Container(
          height: 100,
          margin: EdgeInsets.only(bottom: 5),
          color: Colors.pink,
          child: Text(
            "Sabit Liste",
            style: TextStyle(fontSize: 16),
          ),
          alignment: Alignment.center),
      Container(
          height: 100,
          margin: EdgeInsets.only(bottom: 5),
          color: Colors.cyan,
          child: Text(
            "Sabit Liste",
            style: TextStyle(fontSize: 16),
          ),
          alignment: Alignment.center),
      Container(
          height: 100,
          margin: EdgeInsets.only(bottom: 5),
          color: Colors.green,
          child: Text(
            "Sabit Liste",
            style: TextStyle(fontSize: 16),
          ),
          alignment: Alignment.center),
      Container(
          height: 100,
          margin: EdgeInsets.only(bottom: 5),
          color: Colors.lime,
          child: Text(
            "Sabit Liste",
            style: TextStyle(fontSize: 16),
          ),
          alignment: Alignment.center),
      Container(
          margin: EdgeInsets.only(bottom: 5),
          height: 100,
          color: Colors.teal,
          child: Text(
            "Sabit Liste",
            style: TextStyle(fontSize: 16),
          ),
          alignment: Alignment.center),
    ];
  }

  Color rastgeleRenkUret() {
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}
