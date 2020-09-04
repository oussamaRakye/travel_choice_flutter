import 'city.dart';

import 'package:flutter/services.dart';

class CityCreator{

  CityCreator() {
    //printElements();
      loadCSV();
  }

  Future<String> loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }

  void loadCSV() {
    loadAsset('resources/travel.csv').then((dynamic output) {
      List<String> list = output.split('\n');
      City.list = new List<City>();
      for(int i = 1; i < list.length-1; i++){
        List<String> sublist = list[i].split(',');
        City.list.add(City(
          name: sublist[0],
          beach: sublist[1]=='t' ? true : false,
          mountain: sublist[2]=='t' ? true : false,
          island: sublist[3]=='t' ? true : false,
          big: int.parse(sublist[4]),
          countrySide: int.parse(sublist[5]),
          clubbing: int.parse(sublist[6]),
          punctuation: 0,
          monuments: int.parse(sublist[7]),
        ));
      }
      print('\n\n');
      //print(City.list.length);
      //City.list.forEach((element) {print(element.name);});
    });
  }

  List<City> filter({bool beachP, bool mountainP, bool islandP,
      int clubbingP, int bigP, int countrySideP, int monumentsP}){
    //print(mountainP);
    //print(islandP);
    //print(beachP);
    List<City> filtered = City.list.where((s) => (!mountainP)||s.mountain)
        .where((s) => (!islandP)||s.island)
        .where((s) => (!beachP)||s.beach)
        .toList();
    filtered.forEach((s) {
      s.punctuation =
          (clubbingP-s.clubbing).abs() +
          (monumentsP-s.monuments).abs() +
          (countrySideP-s.countrySide).abs() +
          (bigP-s.big).abs();
    });
    filtered.sort((a,b) => a.punctuation.compareTo(b.punctuation));
    filtered.forEach((s) {print(s.name + s.punctuation.toString());});
    return filtered;
  }
}