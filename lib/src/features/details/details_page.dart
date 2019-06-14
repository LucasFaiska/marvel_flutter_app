import 'package:flutter/material.dart';
import 'package:marvel_flutter_app/src/features/details/comics_tab.dart';
import 'package:marvel_flutter_app/src/features/details/description_tab.dart';
import 'package:marvel_flutter_app/src/features/details/events_tab.dart';
import 'package:marvel_flutter_app/src/features/details/series_tab.dart';
import 'package:marvel_flutter_app/src/features/details/stories_tab.dart';
import 'package:marvel_flutter_app/src/features/style/text.dart';
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
        body: Column(
          children: <Widget>[
            _getDetailsHeader(),
            _getDetailsBody(),
          ],
        ));
  }

  Widget _getDetailsHeader() {
    return Stack(
      children: <Widget>[
        Container(
          height: 190.0,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              alignment: FractionalOffset.topCenter,
              image: NetworkImage(hero.imageUrl),
            ),
          ),
        ),
        Container(
          height: 190.0,
          decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.grey.withOpacity(0.0),
                  Colors.black,
                ],
                stops: [
                  0.0,
                  1.0
                ]),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(hero.name, style: TextStyles.HeroNameDetailsPage),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getDetailsBody() {
    return DefaultTabController(
      length: 2,
      child: Expanded(
        child: SizedBox(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
                child: TabBar(
                  indicatorColor: Color(0xffED1D24),
                  labelColor: Color(0xffED1D24),
                  tabs: [
                    Text("Descrição"),
                    Text("Aparições"),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      child: DescriptionTab(hero),
                    ),
                    Container(
                      child: ComicsTab(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
