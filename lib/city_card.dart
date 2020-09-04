import 'package:flutter/material.dart';
import 'package:travelchice/city_screen.dart';
import 'city.dart';

class CityCard extends StatefulWidget {
  final City city;
  
  
  CityCard(this.city);
  
  @override
  _CityCardState createState() => _CityCardState();
}

class _CityCardState extends State<CityCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.white.withAlpha(200),
      elevation: 10,
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CityScreen(widget.city)));
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Hero(
                tag: widget.city.name + 'img',
                child: Container(
                  child: Image(
                    width: 100,
                    height: 100,
                    image: AssetImage('images/oussama.jpg'),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: widget.city.name,
                  child: Container(
                    child: Text(
                      widget.city.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
                Text(
                    'Comarca',
                style: TextStyle(
                  color: Colors.grey[700]
                ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
