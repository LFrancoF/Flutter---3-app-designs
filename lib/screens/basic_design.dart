import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagem
          const Image(image: AssetImage('assets/Landscape.jpg')),
          //Titulo
          const Title(),
          //Botones
          const ButtonSection(),
          //Descripcion
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: const Text('Id nisi pariatur veniam quis. Veniam do occaecat commodo consequat excepteur proident quis dolore consectetur tempor nostrud. Reprehenderit ut magna elit sunt quis. Ipsum reprehenderit duis duis sunt ipsum sit excepteur. Labore incididunt excepteur deserunt ea dolor. Ullamco cupidatat dolor commodo do in.',
              style: TextStyle(fontSize: 15,), textAlign: TextAlign.justify,
            )
          )
        ],
      )
    );
  }
}


class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
                Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
                Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45),),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red,),
          const Text('41')
        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const[
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.location_on, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  
  const CustomButton({
    Key? key, required this.text, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30,),
        Text(text, style: const TextStyle(color: Colors.blue),)
      ],
    );
  }
}