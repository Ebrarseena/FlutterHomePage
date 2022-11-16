import 'package:flutter/material.dart';
import 'about.dart';
import 'categories.dart';
import 'login.dart';
import 'newAccount.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasayfa(),
    );
  }
}
class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);


  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          color: const Color(0xfff9f2ec),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              children: [
                buildBaslik(),
                buildBanner(),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //ilk eleman
                      buildNavigation(
                          text: "Kategoriler",
                          icon: Icons.menu,
                          widget: const KategorilerSayfasi(),
                          context: context),
                      buildNavigation(
                          text: "Kullanıcı Girişi",
                          icon: Icons.person,
                          widget: const UyeGirisi(),
                          context: context),
                      buildNavigation(
                          text: "Üye Kayıt",
                          icon: Icons.people,
                          widget: const YeniKayit(),
                          context: context),
                      buildNavigation(
                          text: "Hakkımızda",
                          icon: Icons.web_outlined,
                          widget: const Hakkimizda(),
                          context: context)
                    ],
                  ),
                ),
                const SizedBox(height: 60),
                const Text(
                  "Konstantinopolis",textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff6e4318)),
                ),
                const SizedBox(height: 13),
                buildTarihce(
                  metin: "İstanbul 1600 yıl boyunca, 330'dan 1922'ye kadar bulunan dönemde; Roma İmparatorluğu (330-395), Bizans İmparatorluğu (395-1204, 1261-1453), Latin İmparatorluğu (1204-1261) ve Osmanlı İmparatorluğu (1453-1922) olmak üzere 4 farklı imparatorluğa başkentlik yapmış bir şehir.Yakın çağın başladığı dönemde İkinci Roma ve Yeni Roma adları ile anılan kent, daha sonra 'Byzantion' ve geç devirlerde Konstantinopolis olarak adlandırılmıştır",
                  fotourl: "assets/img/istanbul.jpg",
                ),
                const SizedBox(height: 29),

                const SizedBox(height: 29),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNavigation({
    required String text,
    required IconData icon,
    required widget,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return widget;
        }));
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 22),
            decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Color(0xff6e4318)),
            child: Icon(
              icon,
              color: const Color(0xfff9f2ec),
              size: 18,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xff6e4318),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBaslik() {
    return const Padding(
      padding: EdgeInsets.only(top: 25.0),
      child: Text(
        "Konstantinopolis",
        style: TextStyle(
          fontSize: 30,
          color: Color(0xff6e4318),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildBanner() {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: const Color(0xff6e4318),
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              "Konstantinopolis' e Hoş Geldiniz:)",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xfff9f2ec),
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }

  Widget buildTarihce({required String metin, required String fotourl}) {
    return Column(
      children: [
        Image.asset(fotourl),
        const SizedBox(height: 35),
        Container(
          padding: const EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xff6e4318).withOpacity(0.85)),
          child: Text(
            metin,
            style: const TextStyle(
                color: Color(0xfff9f2ec),
                fontSize: 18),
          ),
        ),
      ],
    );
  }
}
