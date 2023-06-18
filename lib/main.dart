import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/homepage.dart';


void main(){
  runApp(PortFolio());
}

class PortFolio extends StatelessWidget {
  const PortFolio({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
