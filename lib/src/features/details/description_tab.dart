import 'package:flutter/material.dart';
import 'package:marvel_flutter_app/src/features/style/text.dart';
import 'package:marvel_flutter_app/src/domain/marvel_hero.dart';

class DescriptionTab extends StatelessWidget {
  final MarvelHero hero;

  DescriptionTab(this.hero);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Text(hero.description, style: TextStyles.HeroDescriptionDetailsPage),
    );
  }
}