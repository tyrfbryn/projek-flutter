import 'package:flutter/material.dart';
import 'package:myapp/screens/detailfauna_screen.dart';
import 'detailfauna_screen.dart';

class FaunaScreen extends StatelessWidget {
  final List<Map<String, dynamic>> faunaData = [
    {
      "nama": "Buaya",
      "negara": "Muara",
      "image": "assets/images/buaya.jpg",
      "gallery": [
        "assets/images/buaya1.jpg",
        "assets/images/buaya2.jpg",
        "assets/images/buaya3.jpg"
      ],
      "desc": "Buaya muara atau buaya bekatak (Crocodylus porosus) adalah jenis buaya terbesar di dunia. Dinamai demikian karena buaya ini hidup di sungai-sungai dan di dekat laut (muara). Buaya ini juga dikenal dengan nama buaya air asin, buaya laut, dan nama-nama lokal lainnya."
    },
    {
      "nama": "Serigala",
      "negara": "Siberia",
      "image": "assets/images/serigala.jpg",
      "gallery": [
        "assets/images/serigala1.jpg",
        "assets/images/serigala2.jpg",
        "assets/images/serigala3.jpg"
      ],
      "desc": "Serigala adalah anggota keluarga Canidae terbesar yang masih ada , dan selanjutnya dibedakan dari spesies Canis lainnya karena telinga dan moncongnya yang kurang runcing, serta batang tubuh yang lebih pendek dan ekor yang lebih panjang."
    },
    {
      "nama": "Singa",
      "negara": "Rusia",
      "image": "assets/images/singa.jpg",
      "gallery": [
        "assets/images/singa1.jpg",
        "assets/images/singa2.jpg",
        "assets/images/singa3.jpg"
      ],
      "desc": "Singa terkenal kuat, ganas, dan berkuasa. Namun di balik penampilannya yang ganas, kucing besar ini adalah hewan sosial yang hidup dalam kekerabatan kuat yang menjadi keunggulan dimana antar singa saling menjaga, dan bahkan saling merawat singa-singa kecil mereka satu sama lain."
    },
    {
      "nama": "Burung Hantu",
      "negara": "Asia Tenggara",
      "image": "assets/images/owl.jpg",
      "gallery": [
        "assets/images/owl1.jpg",
        "assets/images/owl2.jpg",
        "assets/images/owl3.jpg"
      ],
      "desc": "Ciri-ciri umumnya adalah kepalanya yang besar dan lebar, penglihatan dan pendengarannya tajam, cakarnya tajam dan bulunya cocok untuk terbang senyap. Kebanyakan spesies burung Hantu suka berburu mamalia dan serangga berukuran kecil. Mereka juga bisa memangsa burung lainnya yang berukuran kecil."
    },
    {
      "nama": "Jerapah",
      "negara": "Afrika",
      "image": "assets/images/jerapah.jpg",
      "gallery": [
        "assets/images/jerapah1.jpg",
        "assets/images/jerapah2.jpg",
        "assets/images/jerapah3.jpg"
      ],
      "desc": "Jerapah atau zarafah adalah mamalia berkuku genap endemik Afrika dan merupakan spesies hewan tertinggi yang hidup di darat. Jerapah jantan dapat mencapai tinggi 4,8 sampai 5,5 meter dan memiliki berat yang dapat mencapai 1.360 kilogram. Jerapah betina biasanya sedikit lebih pendek dan lebih ringan."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinasi Fauna'),
        backgroundColor: Color.fromARGB(255, 166, 233, 10),
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
                      builder: (context) => DetailFaunaScreen(
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