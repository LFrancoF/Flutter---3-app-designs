import 'package:flutter/material.dart';

import 'package:designs/widgets/background.dart';
import 'package:designs/widgets/page_title.dart';
import 'package:designs/widgets/card_table.dart';
import 'package:designs/widgets/custom_bottom_nav.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const[

          //Background
          Background(),

          //Cuerpo del screen
          _HomeBody()

        ],

      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const[
          SizedBox(height: 15),
          //Titulos
          PageTitle(),

          //Tabla de Cards
          CardTable()

        ],
      ),
    );
  }
}