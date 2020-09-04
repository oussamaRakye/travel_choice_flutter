import 'package:flutter/material.dart';
import 'city_creator.dart';
import 'wgets/fluidSlider.dart';
import 'listed_cities_screen.dart';

class QuestionnaireScreen extends StatefulWidget {
  @override
  _QuestionnaireScreenState createState() => _QuestionnaireScreenState();
}

class _QuestionnaireScreenState extends State<QuestionnaireScreen> {
  Color red = HSVColor.fromAHSV(1, 0, 1, 1).toColor();

  bool beachBool = false;
  bool islandBool = false;
  bool mountainBool = false;

  double clubbingDouble = 0;
  double countryDouble = 0;
  double bigDouble = 0;
  double monumentsDouble = 0;

  var alignment = Alignment.center;
  int index = 0;

  CityCreator cityCreator = CityCreator();

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
          children: [
            Expanded(
                flex: 5,
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds:500),
                      alignment: index == 0 ? Alignment.center : Alignment.bottomCenter,
                      child: AnimatedOpacity(
                        opacity: index == 0 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 500),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Beach',
                              style: TextStyle(
                                fontSize: 50,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 65),
                              child: Checkbox(
                                value: beachBool,
                                activeColor: red,
                                onChanged: (value) {
                                  setState(() {
                                    beachBool = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      alignment: index == 1 ? Alignment.center : index > 1 ? Alignment.bottomCenter : Alignment.topCenter,
                      child: AnimatedOpacity(
                        opacity: index == 1 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 500),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Island',
                              style: TextStyle(
                                fontSize: 50,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 65),
                              child: Checkbox(
                                value: islandBool,
                                activeColor: red,
                                onChanged: (value) {
                                  setState(() {
                                    islandBool = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      alignment: index == 2 ? Alignment.center : index > 2 ? Alignment.bottomCenter : Alignment.topCenter,
                      child: AnimatedOpacity(
                        opacity: index == 2 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 500),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Mountain',
                              style: TextStyle(
                                fontSize: 50,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 65),
                              child: Checkbox(
                                value: mountainBool,
                                activeColor: red,
                                onChanged: (value) {
                                  setState(() {
                                    mountainBool = value;
                                    print(mountainBool);
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      alignment: index == 3 ? Alignment.center : index > 3 ? Alignment.bottomCenter : Alignment.topCenter,
                      child: AnimatedOpacity(
                        opacity: index == 3 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 500),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Clubbing',
                              style: TextStyle(
                                fontSize: 50,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 65),
                              child: FluidSlider(
                                value: clubbingDouble,
                                sliderColor: HSVColor.fromAHSV(1, 0, 1, 0.5 + clubbingDouble/200).toColor(),
                                onChanged: (double newValue) {
                                  setState(() {
                                    clubbingDouble = newValue;
                                  });
                                },
                                min: 0.0,
                                max: 100.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      alignment: index == 4 ? Alignment.center : index > 4 ? Alignment.bottomCenter : Alignment.topCenter,
                      child: AnimatedOpacity(
                        opacity: index == 4 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 500),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'How big',
                              style: TextStyle(
                                fontSize: 50,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 65),
                              child: FluidSlider(
                                value: bigDouble,
                                sliderColor: HSVColor.fromAHSV(1, 0, 1, 0.5 + bigDouble/200).toColor(),
                                onChanged: (double newValue) {
                                  setState(() {
                                    bigDouble = newValue;
                                  });
                                },
                                min: 0.0,
                                max: 100.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      alignment: index == 5 ? Alignment.center : index > 5 ? Alignment.bottomCenter : Alignment.topCenter,
                      child: AnimatedOpacity(
                        opacity: index == 5 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 500),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Country side',
                              style: TextStyle(
                                fontSize: 50,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 65),
                              child: FluidSlider(
                                value: countryDouble,
                                sliderColor: HSVColor.fromAHSV(1, 0, 1, 0.5 + countryDouble/200).toColor(),
                                onChanged: (double newValue) {
                                  setState(() {
                                    countryDouble = newValue;
                                  });
                                },
                                min: 0.0,
                                max: 100.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      alignment: index == 6 ? Alignment.center : index > 6 ? Alignment.bottomCenter : Alignment.topCenter,
                      child: AnimatedOpacity(
                        opacity: index == 6 ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 500),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Monuments',
                              style: TextStyle(
                                fontSize: 50,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 65),
                              child: FluidSlider(
                                value: monumentsDouble,
                                sliderColor: HSVColor.fromAHSV(1, 0, 1, 0.5 + monumentsDouble/200).toColor(),
                                onChanged: (double newValue) {
                                  setState(() {
                                    monumentsDouble = newValue;
                                  });
                                },
                                min: 0.0,
                                max: 100.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            ),
            Expanded(
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AnimatedOpacity(

                      opacity: index == 0 ? 0.3 : 1,
                      duration: Duration(milliseconds: 500),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(18.0),
                              topLeft: Radius.circular(18.0),
                            ),
                            side: BorderSide(color: red)),
                        onPressed: () {
                          setState(() {
                            if(index != 0) {
                              index -= 1;
                            }
                          });
                        },
                        color: red,
                        textColor: Colors.white,
                        child: Text("Back".toUpperCase(),
                            style: TextStyle(fontSize: 14)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AnimatedOpacity(
                      opacity: index == 6 ? 1 : 0,
                      duration: Duration(milliseconds: 500),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            side: BorderSide(color: red)),
                        onPressed: () {
                          setState(() {
                            if(index == 6) {
                              CityCreator cityCreator = CityCreator();
                              List list = cityCreator.filter(
                                beachP: beachBool,
                                islandP: islandBool,
                                mountainP: mountainBool,
                                bigP: bigDouble.toInt(),
                                clubbingP: clubbingDouble.toInt(),
                                countrySideP: countryDouble.toInt(),
                                monumentsP: monumentsDouble.toInt(),
                              );
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ListedCitiesScreen(list)));
                            }
                          });
                        },
                        color: red,
                        textColor: Colors.white,
                        child: Text("GO".toUpperCase(),
                            style: TextStyle(fontSize: 14)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AnimatedOpacity(
                      opacity: index == 6 ? 0.3 : 1,
                      duration: Duration(milliseconds: 500),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(18.0),
                              topRight: Radius.circular(18.0),
                            ),
                            side: BorderSide(color: red)),
                        onPressed: () {
                          setState(() {
                            if(index != 6) {
                              index = index + 1;
                            }
                          });
                        },
                        color: red,
                        textColor: Colors.white,
                        child: Text("Next".toUpperCase(),
                            style: TextStyle(fontSize: 14)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
