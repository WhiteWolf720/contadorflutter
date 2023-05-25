import 'package:contador/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //eliminar banda de debugger
      title: 'Material App',
      home: LoginPage(),
    );
  }
}