import 'dart:convert';

import 'package:flutterchloenogpoke/models/pokemon_model.dart';
import 'package:http/http.dart' as http;

class PokemonAPI {
  static final String pokeURL = "https://api.pokemontcg.io/v1";

  //static Future<PokemonModel> getRandomPokemon() async {
  //var response = await http.get(pokeURL);
  //Map<String, dynamic> responseJSON = jsonDecode(response.body);
  //PokemonModel pokemonModel = PokemonModel.fromJson(responseJSON);
  //await DefaultCacheManager().downloadFile(pokemonModel.file);
  //await Future.delayed(Duration(seconds: 1));
  //return pokemonModel;
  //}

  static Future<List<PokemonModel>> getListPokemon() async {
    var url = pokeURL + '/cards';
    var response = await http.get(url);
    Map<String, dynamic> responseJSON = jsonDecode(response.body);

    List<PokemonModel> poke = List<PokemonModel>.from(
        responseJSON['cards'].map((e) => PokemonModel.fromJSON(e)).toList());
    print(poke);
    return poke;
  }

  static Future<List<PokemonModel>> getOnePokemon(id) async {
    var url = pokeURL + '/cards/' + id;
    var response = await http.get(url);

    Map<String, dynamic> responseJSON = jsonDecode(response.body);

    List<PokemonModel> poke = List<PokemonModel>.from(
        responseJSON['poke'].map((e) => PokemonModel.fromJSON(e)).toList());
    return poke;
  }
}
