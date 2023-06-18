import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/homepage.dart';


void main(){
  runApp(const PortFolio());
}

class PortFolio extends StatelessWidget {
  const PortFolio({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
