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
    heroesList.add(MarvelHero("bla.jps","Capitão América"));
    heroesList.add(MarvelHero("bla.jps","Capitão América"));
    heroesList.add(MarvelHero("bla.jps","Capitão América"));
    heroesList.add(MarvelHero("bla.jps","Capitão América"));
    heroesList.add(MarvelHero("bla.jps","Capitão América"));
    heroesList.add(MarvelHero("bla.jps","Capitão América"));
  }
}
