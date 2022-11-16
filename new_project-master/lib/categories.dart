import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';


class KategorilerSayfasi extends StatelessWidget {
  const KategorilerSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff9f2ec).withOpacity(0.85),
          title: Text("Kategoriler",
              style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff6e4318),
                  fontWeight: FontWeight.bold)),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xff6e4318), size: 27),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Anasayfa()));
            },
          ),
        ),
        );
  }
}

