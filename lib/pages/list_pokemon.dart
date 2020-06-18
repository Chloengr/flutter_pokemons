import 'package:flutter/material.dart';
import 'package:flutterchloenogpoke/models/pokemon_model.dart';
import 'package:flutterchloenogpoke/pages/get_pokemon.dart';
import 'package:flutterchloenogpoke/services/api_pokemon.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class ListPokemonPage extends StatefulWidget {
  @override
  _ListPokemonPageState createState() => _ListPokemonPageState();
}

class _ListPokemonPageState extends State<ListPokemonPage> {
  List<PokemonModel> _pokemon = [];

  _getListPokemon() {
    PokemonAPI.getListPokemon().then(
      (pokemon) {
        setState(() {
          _pokemon.addAll(pokemon);
        });
      },
    );
  }

  @override
  void initState() {
    _getListPokemon();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Welcome to Bourg Palette'),
        backgroundColorStart: Colors.lightGreenAccent,
        backgroundColorEnd: Colors.green,
      ),
      body: Container(
        child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, position) {
              return Card(
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    MaterialButton(
                      highlightColor: Colors.amberAccent,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GetPokemonPage(),
                            settings: RouteSettings(
                              arguments: _pokemon[position],
                            ),
                          ),
                        );
                      },
                      child: Image.network(
                        '${_pokemon[position].imageUrl}',
                        width: 100,
                        height: 150,
                      ),
                    ),
                    Text(
                      '${_pokemon[position].name}',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
