import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridViewKullanimi(),
    );
  }
}

class GridViewKullanimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView Kullanimi")),
      body: GridView.builder(
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        primary: false,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            print("$index");
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 5, color: Colors.orange),
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(5.0, 2),
                  blurRadius: 10.0,
                )
              ],
              //border: Border.all(width: 10),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/1.jpg"),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
              color: Colors.blue,
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.red],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            alignment: Alignment.bottomCenter,
            // color: Colors.blue.shade200,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Merhaba $index",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// GridView.count(
//           crossAxisCount: 3,
//           primary: false,
//           padding: EdgeInsets.all(10),
//           crossAxisSpacing: 20,
//           mainAxisSpacing: 40,
//           children: <Widget>[
//             Container(
//               alignment: Alignment.center,
//               color: Colors.blue.shade200,
//               child: Text("Merhaba", textAlign: TextAlign.center,),
//             ),
//             Container(
//               alignment: Alignment.center,
//               color: Colors.blue.shade200,
//               child: Text("Merhaba", textAlign: TextAlign.center,),
//             ),
//             Container(
//               alignment: Alignment.center,
//               color: Colors.blue.shade200,
//               child: Text("Merhaba", textAlign: TextAlign.center,),
//             ),
//             Container(
//               alignment: Alignment.center,
//               color: Colors.blue.shade200,
//               child: Text("Merhaba", textAlign: TextAlign.center,),
//             ),
//             Container(
//               alignment: Alignment.center,
//               color: Colors.blue.shade200,
//               child: Text("Merhaba", textAlign: TextAlign.center,),
//             ),

//           ],
//         ));

