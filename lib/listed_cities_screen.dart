import 'package:flutter/material.dart';
import 'city.dart';
import 'city_card.dart';

class ListedCitiesScreen extends StatefulWidget {

  final List<City> cities;

  ListedCitiesScreen(this.cities);

  @override
  _ListedCitiesScreenState createState() => _ListedCitiesScreenState();
}

class _ListedCitiesScreenState extends State<ListedCitiesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 220, 242, 176),
              Color.fromARGB(255, 175, 240, 170)
            ],
            begin: FractionalOffset(0.5,0.0),
            end: FractionalOffset(0.0,0.5),
            stops: [0.0,1.0],
          ),
        ),
        child: Column(
          children: getCard(),
        ),
      ),
    );
  }

  List<Widget> getCard() {
    List<Widget> list = [];
    list.add(SizedBox(height: 40.0,));
    for(City city in widget.cities){
      list.add(CityCard(city));
    }
    return list;
  }
}
