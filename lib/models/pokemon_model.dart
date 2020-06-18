class PokemonModel {
  String id;
  String name;
  int nationalPokedexNumber;
  String imageUrl;
  String supertype;
  String hp;
  String number;
  String evolvesFrom;
  String rarity;
  String series;
  String set;
  List<dynamic> types;

  PokemonModel(
      {this.id,
      this.name,
      this.nationalPokedexNumber,
      this.imageUrl,
      this.supertype,
      this.hp,
      this.number,
      this.evolvesFrom,
      this.rarity,
      this.series,
      this.set,
      this.types});

  PokemonModel.fromJSON(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'] ?? [''],
        nationalPokedexNumber = json['nationalPokedexNumber'],
        imageUrl = json['imageUrl'] ?? [''],
        supertype = json['supertype'] ?? [''],
        hp = json['hp'] ?? '',
        number = json['number'] ?? [''],
        evolvesFrom = json['evolvesFrom'] ?? '',
        rarity = json['rarity'] ?? [''],
        series = json['series'] ?? [''],
        set = json['set'] ?? [''],
        types = json['types'] ?? [''];

  @override
  String toString() {
    return 'PokemonModel{id: $id, name: $name, nationalPokedexNumber: $nationalPokedexNumber, imageUrl: $imageUrl, supertype: $supertype, hp: $hp, number: $number, evolvesFrom: $evolvesFrom, rarity: $rarity, series: $series, set: $set, types: $types}';
  }
}
