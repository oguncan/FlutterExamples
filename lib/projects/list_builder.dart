import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
        // textTheme: TextTheme(
        //   display3: TextStyle(fontSize: 29),
        // ),
      ),
      debugShowCheckedModeBanner: false,
      home: NewListViewBuilder(),
    );
  }
}

class NewListViewBuilder extends StatelessWidget {
  List<Ogrenci> allOgrenci = [];

  @override
  Widget build(BuildContext context) {
    ogrenciBilgileriniGetir();
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Builder"),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => Column(
          children: <Widget>[
            Container(
              child: Card(
                color: allOgrenci[index]._cinsiyet ? Colors.blue : Colors.pink,
                child: ListTile(
                    onTap: () {
                      debugPrint(allOgrenci[index].toString());
                      toastMesajGoster(index);
                      alertDialogGoster(context, index);
                    },
                    title: Text(
                      "Ogrenci adi ${allOgrenci[index]._isim}",
                    ),
                    subtitle:
                        Text("Ogrenci aciklama ${allOgrenci[index]._aciklama}"),
                    leading: allOgrenci[index]._cinsiyet
                        ? Icon(Icons.android)
                        : Icon(Icons.ac_unit),
                    trailing: GestureDetector(
                      child: Icon(Icons.add),
                      onTap: () => {},
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  void ogrenciBilgileriniGetir() {
    allOgrenci = List.generate(
      100,
      (index) => Ogrenci(
          "Ogun $index", "Aciklama $index", index % 2 == 0 ? true : false),
    );
  }

  void toastMesajGoster(int index) {
    Fluttertoast.showToast(
        msg: "Basılan elaman $index",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void alertDialogGoster(BuildContext ctx, int index) {
    showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Alert Dialog"),
            content: SingleChildScrollView(
                child: ListBody(
              children: <Widget>[
                Text("Tüm Öğrenciler ${allOgrenci[index]}"),
                Text("Alert Dialog İçeriği 2"),
                Text("Alert Dialog İçeriği 3"),
                Text("Alert Dialog İçeriği 4"),
                Text("Alert Dialog İçeriği 5"),
                Text("Alert Dialog İçeriği 6"),
                Text("Alert Dialog İçeriği 7"),
                Text("Alert Dialog İçeriği 8"),
                Text("Alert Dialog İçeriği 9"),
                Text("Alert Dialog İçeriği 10"),
                Text("Alert Dialog İçeriği 11"),
                Text("Alert Dialog İçeriği 12"),
                Text("Alert Dialog İçeriği 13"),
              ],
            )),
            actions: <Widget>[
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Text("Tamam"),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Text("Kapat"),
                  )
                ],
              )
            ],
          );
        });
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    return "Seçilen öğrenci adı: $_isim, açıklaması: $_aciklama";
  }
}
