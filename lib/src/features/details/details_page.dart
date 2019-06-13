import 'package:flutter/material.dart';
import 'package:marvel_flutter_app/src/models/marvel_hero.dart';

class DetailsPage extends StatelessWidget {
  final MarvelHero hero;

  DetailsPage(this.hero);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(hero.name),
          backgroundColor: Color(0xffED1D24),
        ),
        body: Image.network(hero.imageUrl)
    );
  }
}