import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      showSelectedLabels: false, showUnselectedLabels: false,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(   //iconos y labels obligatorios, se puede ocultar labels con la propiedad showSelectedLabels o showUnselectedLabels
          icon: Icon(Icons.calendar_today_outlined, size: 30),
          label: 'Calendario'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.graphic_eq, size: 30),
          label: 'Grafica'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle_rounded, size: 30),
          label: 'Usuario'
        ),
      ]
    );
  }
}