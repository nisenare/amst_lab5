import 'package:flutter/material.dart';

import '../pages/chart.dart';
import '../pages/data.dart';
import '../pages/home_page.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vacheck'),
      ),
      body: _llamarPagina(_currentIndex),
      bottomNavigationBar: _crearNavigationBar(),
    );
  }

  Widget _crearNavigationBar() {
    return BottomNavigationBar(
        unselectedItemColor: Color.fromRGBO(168, 97, 93, 0.4),
        iconSize: 30.0,
        unselectedIconTheme: IconThemeData(size: 25.0),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.data_usage), label: 'Data'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Chart'),
        ]);
  }

  Widget _llamarPagina(int paginaActual) {
    switch (paginaActual) {
      case 0:
        return Data();
      case 2:
        return Chart();
      default:
        return HomePage();
    }
  }
}
