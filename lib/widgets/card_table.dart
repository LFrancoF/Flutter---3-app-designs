import 'package:flutter/material.dart';
import 'dart:ui';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const[
        TableRow(
          children: [
            _SingleCard(icon: Icons.border_all, color: Colors.blue, text: 'General'),
            _SingleCard(icon: Icons.car_rental, color: Colors.pinkAccent, text: 'Transport'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.shop, color: Colors.purple, text: 'Shopping'),
            _SingleCard(icon: Icons.score, color: Colors.purpleAccent, text: 'Bill'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.movie_creation_outlined, color: Colors.deepPurple, text: 'Entertainment'),
            _SingleCard(icon: Icons.food_bank_outlined, color: Colors.pinkAccent, text: 'Grocery'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.topic_outlined, color: Colors.indigo, text: 'Topics'),
            _SingleCard(icon: Icons.videogame_asset_outlined, color: Colors.blueGrey, text: 'VideoGames'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(icon: Icons.topic_outlined, color: Colors.indigo, text: 'Topics'),
            _SingleCard(icon: Icons.videogame_asset_outlined, color: Colors.blueGrey, text: 'VideoGames'),
          ]
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({super.key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(icon, size: 35, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(text, style: TextStyle(color: color, fontSize: 18),)
        ],
      )
    );

  }
}

class _CardBackground extends StatelessWidget {  //widget enfocado en el efecto del blur
  final Widget child;
  const _CardBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15), //con este margin en un container exterior para el ClipRRect el efecto Blur se aplicara solo dentro del container
      child: ClipRRect( //para que el efecto del Blur no se expanda en cadena en cada BackdropFilter o Card de esta pantalla
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter( //para aplicar Blur
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}