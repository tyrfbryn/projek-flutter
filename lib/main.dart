import 'package:flutter/material.dart';
import 'package:myapp/flora-fauna/latihan.dart';
import 'package:myapp/screens/about_screen.dart';
import 'package:myapp/screens/fauna_screen.dart';
import 'package:myapp/screens/flora_screen.dart';
import 'package:myapp/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        '/about': (context) => AboutScreen(),
        '/home': (context)=> HomeScreen(),
        '/fauna': (context)=> FaunaScreen(),
        '/flora': (context)=> FloraScreen(),
      },
      initialRoute: '/home',
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}