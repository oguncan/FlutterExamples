import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<int> listeNumaralari = List.generate(100, (index) => index);
  List<String> listeAltBaslik =
      List.generate(100, (index) => "Liste elemanı alt başlık $index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Learn"),
      ),
      body: ListView(
        children: listeNumaralari
            .map(
              (number) => Column(
                children: <Widget>[
                  Container(
                    child: Card(
                      child: ListTile(
                        title: Text("Liste Elemanı $number"),
                        subtitle: Text("List subtitle ${listeAltBaslik[number]}"),
                        trailing: Icon(Icons.access_alarm, color: Colors.red),
                        leading: CircleAvatar(
                          child: Icon(Icons.ac_unit),
                        ),
                      ),
                      color: Colors.teal,
                      margin: EdgeInsets.all(20),
                      elevation: 8,
                    ),
                  ),
                  Divider(
                    color: Colors.green.shade500,
                    height: 0,
                    thickness: 3,
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
//  <Widget>[
//             Container(
//               child: Card(
//                 child: ListTile(
//                   title: Text("Liste Elemanı"),
//                   subtitle: Text("List subtitle"),
//                   trailing: Icon(Icons.access_alarm, color: Colors.red),
//                   leading: CircleAvatar(
//                     child: Icon(Icons.ac_unit),
//                   ),
//                 ),
//                 color: Colors.teal,
//                 margin: EdgeInsets.all(20),
//                 elevation: 8,
//               ),
//             ),
//             Divider(
//               color: Colors.green.shade500,
//               height: 0,
//               thickness: 3,
//             ),
//           ],
