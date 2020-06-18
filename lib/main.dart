import 'package:flutter/material.dart';
import 'package:flutterchloenogpoke/routes/routes.dart';

void main() {
  runApp(PokemonApp());
}

class PokemonApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/list_pokemon',
      routes: routes,
    );
  }
}
