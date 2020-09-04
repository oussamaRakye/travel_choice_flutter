
import 'package:flutter/material.dart';

import 'city.dart';

class CityScreen extends StatefulWidget {

  final City city;

  CityScreen(this.city);

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 300.0,
                floating: false,
                pinned: true,
                flexibleSpace: Center(
                  child: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Hero(
                        tag: widget.city.name,
                        child: Container(
                          child: Text(widget.city.name,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                          ),
                        ),
                      ),
                      background: Hero(
                        tag: widget.city.name + 'img',
                        child: Container(
                          child: Image(
                            image: AssetImage('images/oussama.jpg'),
                          ),
                        ),
                      ),
                  ),
                ),
              ),
            ];
          },
          body: Center(
            child: Text("Sample Text"),
          ),
        ),
      ),
    );
  }
}
