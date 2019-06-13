import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marvel_flutter_app/src/features/details/details_page.dart';
import 'package:marvel_flutter_app/src/features/home/hero/hero_card.dart';
import 'package:marvel_flutter_app/src/models/marvel_hero.dart';

class HeroesList extends StatelessWidget {
  final List<MarvelHero> heroesList;
  HeroesList(this.heroesList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: this.heroesList.length,
        itemBuilder: (context, position) {
          return GestureDetector(
            child: HeroCard(this.heroesList[position]),
            onTap: () => navigateToDetails(context, this.heroesList[position]),
          ); 
        });
  }

  navigateToDetails(BuildContext context, MarvelHero hero) async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => DetailsPage(hero)));
  }
}
