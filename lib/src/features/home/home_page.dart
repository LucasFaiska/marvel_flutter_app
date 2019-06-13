import 'package:flutter/material.dart';
import 'package:marvel_flutter_app/src/models/marvel_hero.dart';

import 'hero/hero_list.dart';

class HomePage extends StatelessWidget {

  List<MarvelHero> heroesList = List();

  @override
  Widget build(BuildContext context) {
    fillHeroesList();

    return Scaffold(
        appBar: AppBar(
          title: Text("Marvel Flutter App"),
          backgroundColor: Color(0xffED1D24),
        ),
        body: HeroesList(heroesList)
    );
  }

  void fillHeroesList() {
    heroesList.add(MarvelHero("http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784.jpg","3-D Man",""));
    heroesList.add(MarvelHero("http://i.annihil.us/u/prod/marvel/i/mg/3/20/5232158de5b16.jpg","A-Bomb (HAS)", "Rick Jones has been Hulk's best bud since day one, but now he's more than a friend...he's a teammate! Transformed by a Gamma energy explosion, A-Bomb's thick, armored skin is just as strong and powerful as it is blue. And when he curls into action, he uses it like a giant bowling ball of destruction! "));
    heroesList.add(MarvelHero("http://i.annihil.us/u/prod/marvel/i/mg/6/20/52602f21f29ec.jpg","A.I.M.", "AIM is a terrorist organization bent on destroying the world."));
    heroesList.add(MarvelHero("http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg","Aaron Stack", ""));
    heroesList.add(MarvelHero("http://i.annihil.us/u/prod/marvel/i/mg/9/50/4ce18691cbf04.jpg","Abomination (Emil Blonsky)", "Formerly known as Emil Blonsky, a spy of Soviet Yugoslavian origin working for the KGB, the Abomination gained his powers after receiving a dose of gamma radiation similar to that which transformed Bruce Banner into the incredible Hulk."));
    heroesList.add(MarvelHero("http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg","Abomination (Ultimate)", ""));
  }
}
