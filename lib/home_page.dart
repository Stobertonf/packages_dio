import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openPage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circular Percent Indicators"),
      ),
      body: Center(
        child: ListView(children: <Widget>[
          CircularPercentIndicator(
            radius: 100.0,
            lineWidth: 10.0,
            percent: 0.8,
            header: const Text("Icon header"),
            center: const Icon(
              Icons.person_pin,
              size: 50.0,
              color: Colors.blue,
            ),
            backgroundColor: Colors.grey,
            progressColor: Colors.blue,
          ),
          CircularPercentIndicator(
            radius: 130.0,
            animation: true,
            animationDuration: 1200,
            lineWidth: 15.0,
            percent: 0.4,
            center: const Text(
              "40 hours",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            circularStrokeCap: CircularStrokeCap.butt,
            backgroundColor: Colors.yellow,
            progressColor: Colors.red,
          ),
          CircularPercentIndicator(
            radius: 120.0,
            lineWidth: 13.0,
            animation: true,
            percent: 0.7,
            center: const Text(
              "70.0%",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            footer: const Text(
              "Sales this week",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.purple,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CircularPercentIndicator(
              radius: 60.0,
              lineWidth: 5.0,
              percent: 1.0,
              center: const Text("100%"),
              progressColor: Colors.green,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.10,
                  center: const Text("10%"),
                  progressColor: Colors.red,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                ),
                CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.30,
                  center: const Text("30%"),
                  progressColor: Colors.orange,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                ),
                CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.60,
                  center: const Text("60%"),
                  progressColor: Colors.yellow,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.90,
                  center: const Text("90%"),
                  progressColor: Colors.green,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
