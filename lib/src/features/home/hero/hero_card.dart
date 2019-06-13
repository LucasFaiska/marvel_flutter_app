import 'package:flutter/cupertino.dart';
import 'package:marvel_flutter_app/src/models/marvel_hero.dart';

class HeroCard extends StatefulWidget {
  final MarvelHero hero;

  HeroCard(this.hero);

  @override
  State<StatefulWidget> createState() {
    return HeroCardState(hero);
  }

}

class HeroCardState extends State<HeroCard> {
  final MarvelHero hero;

  HeroCardState(this.hero);

  @override
  Widget build(BuildContext context) {
    return Text(hero.name);
  }
}