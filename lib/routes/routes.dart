import 'package:flutter/material.dart';
import 'package:flutterchloenogpoke/pages/get_pokemon.dart';
import 'package:flutterchloenogpoke/pages/list_pokemon.dart';

Map<String, WidgetBuilder> routes = {
  '/list_pokemon': (context) {
    return ListPokemonPage();
  },
  '/pokemon': (context) {
    return GetPokemonPage();
  }
};
