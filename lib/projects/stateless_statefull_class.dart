
import 'package:flutter/material.dart';


class OneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        // textTheme: TextTheme(
        //   display3: TextStyle(fontSize: 29),
        // ),
      ),
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateless Learn"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              {setState(() => _count++), print("Tıklandı ve sayi $_count")},
          backgroundColor: Colors.blue,
          child: Icon(Icons.ac_unit),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.green,
                onPressed: () => setState(() => _count++),
                child: Text("Arttır"),
              ),
              Text(
                "$_count",
                style: TextStyle(
                    fontSize: 30,
                    color: _count < 0 ? Colors.red : Colors.green),
              ),
              RaisedButton(
                color: Colors.red,
                onPressed: () => setState(() => _count--),
                child: Text("Azalt"),
              ),
            ],
          ),
        ));
  }
}
