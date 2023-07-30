import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[300],
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child:
          const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          Icons.airport_shuttle,
          color: Colors.white,
          size: 190,
        ),
        Text(
          "Welcome",
          style: TextStyle(
              color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),
        ),
        Text(
          "Bienvenido a la app para visualizar la informacion de temperatura de los camiones que transportan las vacunas",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        )
      ]),
    );
  }
}
