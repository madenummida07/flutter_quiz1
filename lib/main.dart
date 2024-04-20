import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent.shade100,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Weather Forecast'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            TextF(),
            TopicStreet(),
            DetailsMne(),
            Infos(),
            AlsoTitle(),
            Windows(),
          ],
        ),
      ),
    );
  }
}

Widget TextF() {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0), // Border radius
          border: Border.all(color: Colors.white, width: 1.0),
          color: Colors.white // Border color and width
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter City Name',
                hintStyle: TextStyle(color: Colors.deepPurple),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}

Column TopicStreet() {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Pushkin 154, Taraz',
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 45,
              fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(0),
        child: Text(
          'Friday, April 19, 2024',
          style: TextStyle(color: Colors.blue, fontSize: 25),
        ),
      )
    ],
  );
}

Row DetailsMne() {
  return Row(
    children: <Widget>[
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 100, right: 20),
          child: Icon(
            Icons.wb_sunny,
            size: 90,
            color: Colors.yellow,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 17),
        child: Column(
          children: <Widget>[
            Text(
              '14 °F',
              style: TextStyle(color: Colors.white, fontSize: 70),
            ),
            Text(
              'LIGHT SNOW',
              style: TextStyle(fontSize: 25, color: Colors.black54),
            )
          ],
        ),
      )
    ],
  );
}

Row Infos() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit_rounded,
              color: Colors.blue,
              size: 65,
            ),
            Text(
              '5',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Text(
              'km/hr',
              style: TextStyle(color: Colors.blue, fontSize: 27),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit_rounded,
              color: Colors.blue,
              size: 65,
            ),
            Text(
              '3',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Text(
              '%',
              style: TextStyle(color: Colors.blue, fontSize: 27),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.ac_unit_rounded,
              color: Colors.blue,
              size: 65,
            ),
            Text(
              '20',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Text(
              '%',
              style: TextStyle(color: Colors.blue, fontSize: 27),
            )
          ],
        ),
      ),
    ],
  );
}

Row AlsoTitle() {
  return Row(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 70),
        child: Text(
          '7-DAY WEATHER FORECAST',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}

Row Windows() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(10.0), // Add border radius
        child: Container(
          width: 160,
          height: 115,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: <Widget>[
                Text(
                  'Friday',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '6 °F',
                      style:
                      TextStyle(color: Colors.blue.shade100, fontSize: 40),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.wb_sunny,
                        color: Colors.yellow,
                        size: 50,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(10.0), // Add border radius
        child: Container(
          width: 210,
          height: 115,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: <Widget>[
                Text(
                  'Saturday',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        '5 °F',
                        style: TextStyle(
                            color: Colors.blue.shade100, fontSize: 40),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(
                        Icons.wb_cloudy,
                        color: Colors.blue.shade300,
                        size: 50,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
