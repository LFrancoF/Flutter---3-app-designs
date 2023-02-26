import 'package:flutter/material.dart';

import 'package:designs/screens/basic_design.dart';
import 'package:designs/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'scroll_screen',
      routes: {
        'basic_design' : (_) => const BasicDesignScreen(),
        'scroll_screen' :(_) => const ScrollScreen(),
      },
    );
  }
}