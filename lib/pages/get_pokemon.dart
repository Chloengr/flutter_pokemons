import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterchloenogpoke/models/pokemon_model.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class GetPokemonPage extends StatefulWidget {
  @override
  _GetPokemonPageState createState() => _GetPokemonPageState();
}

class _GetPokemonPageState extends State<GetPokemonPage> {
  @override
  Widget build(BuildContext context) {
    final PokemonModel pokemon = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: GradientAppBar(
        backgroundColorStart: Colors.lightGreenAccent,
        backgroundColorEnd: Colors.green,
      ),
      body: Container(
        color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.network(
                pokemon.imageUrl,
                height: 200,
                fit: BoxFit.fitHeight,
              ),
            ),
            Expanded(
              flex: 2,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                elevation: 30,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            pokemon.name,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 40),
                          child: Text(
                            '-',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'N° ${pokemon.nationalPokedexNumber}',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 3.0,
                          width: 300.0,
                          color: Colors.lightGreenAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'HP ' + pokemon.hp,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Evolves from',
                                style: TextStyle(color: Colors.lightGreen),
                              ),
                              Text(
                                pokemon.evolvesFrom,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Types',
                                style: TextStyle(color: Colors.lightGreen),
                              ),
                              Text(
                                '${pokemon.types}',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Rarity',
                                style: TextStyle(color: Colors.lightGreen),
                              ),
                              Text(
                                pokemon.rarity,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Supertype',
                                style: TextStyle(color: Colors.lightGreen),
                              ),
                              Text(
                                pokemon.supertype,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                          child: Container(
                            height: 2.0,
                            width: 180.0,
                            color: Colors.black12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Number',
                                style: TextStyle(color: Colors.lightGreen),
                              ),
                              Text(
                                pokemon.number,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Set',
                                style: TextStyle(color: Colors.lightGreen),
                              ),
                              Text(
                                pokemon.set,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Series',
                                style: TextStyle(color: Colors.lightGreen),
                              ),
                              Text(
                                pokemon.series,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
