import 'package:flutter/material.dart';
import 'package:myapp/screens/detailfauna_screen.dart';
import 'detailflora_screen.dart';

class FloraScreen extends StatelessWidget {
  final List<Map<String, dynamic>> faunaData = [
    {
      "nama": "Bunga Teratai",
      "negara": "Mesir",
      "image": "assets/images/teratai.jpg",
      "gallery": [
        "assets/images/teratai1.jpg",
        "assets/images/teratai2.jpg",
        "assets/images/teratai3.jpg"
      ],
      "desc": "Bunga teratai terangkat oleh batangnya sehingga berada di atas permukaan air. Bunga teratai berukuran sekitar 10 hingga 20 cm, terdiri dari sekitar 15 kelopak berwarna merah muda, dengan cincin padat benang sari kuning keemasan"
    },
    {
      "nama": "Bunga Matahari",
      "negara": "Siberia",
      "image": "assets/images/sun.jpg",
      "gallery": [
        "assets/images/sun1.jpg",
        "assets/images/sun2.jpg",
        "assets/images/sun3.jpg"
      ],
      "desc": "Bunga matahari adalah salah satu tanaman berbunga. Bunganya akan mekar secara periodik atau musiman, yaitu sekali dalam setahun. Istilah untuk merujuk bunga ini berbeda-beda di setiap negara, misalnya di Inggris disebut sunflower, masyarakat Jepang menyebutnya himawari, sedangkan di China dikenal dengan istilah xuang ri kui."
    },
    {
      "nama": "Bunga Rafflesia",
      "negara": "Rusia",
      "image": "assets/images/bangkai.jpg",
      "gallery": [
        "assets/images/bangkai1.jpg",
        "assets/images/bangkai2.jpg",
        "assets/images/bangkai3.jpg"
      ],
      "desc": "Bunga Rafflesia adalah tumbuhan parasit yang terkenal dengan ukuran bunganya yang sangat besar. Bunga Rafflesia dapat tumbuh hingga berdiameter lebih dari 1 meter dan merupakan bunga terbesar di dunia. Bunga Rafflesia pertama kali ditemukan oleh seorang dokter dan naturalis Inggris bernama Joseph Arnold pada tahun 1818 di hutan hujan Sumatera."
    },
    {
      "nama": "Pohon Darah Naga",
      "negara": "Asia Tenggara",
      "image": "assets/images/pohon.jpg",
      "gallery": [
        "assets/images/pohon1.jpg",
        "assets/images/pohon2.jpg",
        "assets/images/pohon3.jpg"
      ],
      "desc": "Pohon darah naga dinamai oleh Profesor Issac bayley Balfour pada tahun 1880. Pohon itu berbentuk seperti jamur atau payung. Daunnya berbentuk seperti pedang, keras, dan bergerombol di atas pohonnya. Pohon darah naga tumbuh di daerah yang kering. Usianya bisa mencapai 300 tahun lebih,"
    },
    {
      "nama": "Bunga Edelweis",
      "negara": "Afrika",
      "image": "assets/images/edelweis.jpg",
      "gallery": [
        "assets/images/edelweis1.jpg",
        "assets/images/edelweis2.jpg",
        "assets/images/edelweis3.jpg"
      ],
      "desc": "Bunga Edelweis juga dijuluki sebagai bunga abadi, dan bunga ini mengandung hormon etilen yang dapat mencegah kerontokan kelopak bunga. Dengan hormon itu, Edelweis dapat mekar dan bertahan hingga 10 tahun lamanya, bahkan lebih."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinasi Fauna'),
        backgroundColor: Color.fromARGB(255, 10, 233, 66),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: faunaData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailFloraScreen(
                        nama: faunaData[index]["nama"],
                        negara: faunaData[index]["negara"],
                        image: faunaData[index]["image"],
                        gallery: faunaData[index]["gallery"],
                        desc: faunaData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(faunaData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    faunaData[index]["nama"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}