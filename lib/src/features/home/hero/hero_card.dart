import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marvel_flutter_app/src/features/style/text.dart';
import 'package:marvel_flutter_app/src/models/marvel_hero.dart';

class HeroCard extends StatelessWidget {
  final MarvelHero hero;
  HeroCard(this.hero);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4.0,
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _getHeroAvatar(),
                Expanded(child: _getHeroData())
              ],
            )));
  }

  Widget _getHeroAvatar() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: 80.0,
        height: 80.0,
        child: CircleAvatar(
          backgroundImage: NetworkImage(hero.imageUrl),
          minRadius: 90,
          maxRadius: 150,
        ),
      ),
    );
  }

  Widget _getHeroData() {
    return Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(hero.name, style: TextStyles.HeroNameTitleBold),
            _getPublicationsList()
          ],
        ));
  }

  Widget _getPublicationsList() {
    return Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _getPublicationsListItem("Comics: ", "10"),
                _getPublicationsListItem("Series: ", "10"),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _getPublicationsListItem("Stories: ", "10"),
                _getPublicationsListItem("Events: ", "10"),
              ],
            )
          ],
        ));
  }

  Widget _getPublicationsListItem(
      String publicationsType, String publicationsCount) {
    return Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Row(children: <Widget>[
          Text(publicationsType),
          Text(publicationsCount),
        ]));
  }
}
