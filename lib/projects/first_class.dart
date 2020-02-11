import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Merhaba",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "D",
                  style: TextStyle(fontSize: 24),
                ),
                color: Colors.orange,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 24),
                ),
                color: Colors.orange,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "R",
                  style: TextStyle(fontSize: 24),
                ),
                color: Colors.orange,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "T",
                  style: TextStyle(fontSize: 24),
                ),
                color: Colors.orange,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "E",
              style: TextStyle(fontSize: 24),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "R",
              style: TextStyle(fontSize: 24),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "S",
              style: TextStyle(fontSize: 24),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "L",
              style: TextStyle(fontSize: 24),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "E",
              style: TextStyle(fontSize: 24),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "R",
              style: TextStyle(fontSize: 24),
            ),
            color: Colors.orange,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              " I ",
              style: TextStyle(fontSize: 24),
            ),
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}