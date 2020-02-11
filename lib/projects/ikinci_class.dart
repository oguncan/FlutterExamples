import 'package:flutter/material.dart';

class MyAppTwo extends StatelessWidget {
  Function a = () => print("Merhaba");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Merhaba",
        ),
      ),
      body: Column(
        children: <Widget>[
          Text(
            "Image ve Button Türleri",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            child: Placeholder(
                          strokeWidth: 5,
                        )),
                        Text("Change \n World"),
                      ],
                    ),
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FadeInImage.assetNetwork(
                            placeholder: "assets/images/giphy.gif",
                            image:
                                "https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg"),
                        Text("Change \n World")
                      ],
                    ),
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/images/2.jpg"),
                        Text("Change \n World")
                      ],
                    ),
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlutterLogo(
                            size: 48,
                            colors: Colors.green,
                            style: FlutterLogoStyle.markOnly),
                        Text("Change \n World"),
                      ],
                    ),
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FadeInImage.assetNetwork(
                            placeholder: "assets/images/giphy.gif",
                            image:
                                "https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg"),
                        Text("Change \n World")
                      ],
                    ),
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/images/2.jpg"),
                        Text("Change \n World")
                      ],
                    ),
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                  child: Text("Button123456"),
                  onPressed: a,
                  elevation: 20,
                  color: Colors.purple,
                  textColor: Colors.blue,
                ),
                RaisedButton(
                  child: Text("Button"),
                  onPressed: () => print("Merhaba"),
                  elevation: 20,
                  color: Colors.orange,
                  textColor: Colors.blue,
                ),
                RaisedButton(
                  child: Text("Button3"),
                  onPressed: a,
                  elevation: 20,
                  color: Colors.black,
                  textColor: Colors.blue,
                ),
                RaisedButton(
                  child: Text("Button456"),
                  onPressed: a,
                  elevation: 20,
                  color: Colors.red,
                  textColor: Colors.blue,
                ),
                IconButton(
                  icon: Icon(Icons.ac_unit),
                  onPressed: () => print("IconButton"),
                  iconSize: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
