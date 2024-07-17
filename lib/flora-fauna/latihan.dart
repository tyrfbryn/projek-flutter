import 'package:flutter/material.dart';

void main() {
  runApp(FloraFauna());
}

class FloraFauna extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flora & Fauna',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FloraFaunaPage(),
    );
  }
}

class FloraFaunaPage extends StatelessWidget {
  final List<String> floraList = [
    'Orchidaceae (Anggrek)',
    'Rafflesia arnoldii (Padma Raksasa)',
    'Amorphophallus titanium (Bunga Bangkai)',
    'Bambusa vulgaris (Bambu Tali)'
  ];

  final List<String> faunaList = [
    'Panthera tigris (Harimau Sumatera)',
    'Pongo abelii (Orangutan Sumatera)',
    'Helarctos malayanus (Beruang Madu)',
    'Papilio memnon (Kupu-kupu Rajah Brooke)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flora & Fauna'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SectionTitle(title: 'Flora'),
            ListView.builder(
              shrinkWrap: true,
              itemCount: floraList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(floraList[index]),
                );
              },
            ),
            SectionTitle(title: 'Fauna'),
            ListView.builder(
              shrinkWrap: true,
              itemCount: faunaList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(faunaList[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.grey[300],
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}