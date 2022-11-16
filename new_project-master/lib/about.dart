import 'package:flutter/material.dart';
import 'main.dart';

class Hakkimizda extends StatelessWidget {
  const Hakkimizda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xfff9f2ec).withOpacity(0.85),
          title: const Text("Hakkımızda",
              style: TextStyle(fontSize: 24, color: Color(0xff6e4318), fontWeight: FontWeight.bold)),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Color(0xff6e4318), size: 27),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Anasayfa()));
            },
          ),
        ),
       );
  }
}
