import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.5], //puntos de partida del primer color y del segundo color para el gradiente
            colors: [
              Color.fromARGB(255, 124, 221, 197),
              Color(0xff30BAD6),
            ]
          ),
    );
    
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(), //omportamiento del scroll de IOS
          scrollDirection: Axis.vertical,
          children: const[
            Page1(),
            Page2(),
          ],
        ),
      ),
    );
  }
}

//PAGINA 1
class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const[
        //Background
        Background(),
        MainContent(),
      ],
    );
  }
}

//BACKGROUND---------------------------------------------
class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}

//MAINCONTENT---------------------------------------------
class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea( //para que el child no ocupe las partes de la camara frontal de la pantalla o salida de audio, etc
      bottom: false,  //evita que proteja la parte de abajo, o lo ignora
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('11°', style: textStyle),
          const Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white),
        ],
        ),
      ),
    );
  }
}

//PAGINA 2
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {}, 
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder()
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0.5),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 30)),
          ),
        ),
      ),
    );
  }
}