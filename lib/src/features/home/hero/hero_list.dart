import 'package:flutter/cupertino.dart';
import 'package:marvel_flutter_app/src/features/home/hero/hero_card.dart';
import 'package:marvel_flutter_app/src/models/marvel_hero.dart';

class HeroesList extends StatefulWidget {
  final List<MarvelHero> heroesList;

  HeroesList(this.heroesList);

  @override
  State<StatefulWidget> createState() {
    return HeroesListState(heroesList);
  }
}

class HeroesListState extends State<HeroesList> {
  final List<MarvelHero> heroesList;
  
  HeroesListState(this.heroesList);
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.heroesList.length,
      itemBuilder: (context, position) {
        return HeroCard(this.heroesList[position]);
      }
    );
  }
}