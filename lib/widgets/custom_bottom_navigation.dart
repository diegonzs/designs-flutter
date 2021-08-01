import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'Calendario',
          icon: Icon(Icons.calendar_today_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Grafica',
          icon: Icon(Icons.pie_chart_outline),
        ),
        BottomNavigationBarItem(
          label: 'Usuarios',
          icon: Icon(Icons.calendar_today_outlined),
        ),
      ],
    );
  }
}
