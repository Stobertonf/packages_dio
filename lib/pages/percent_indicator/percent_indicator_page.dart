import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PercentIndicatorPage extends StatefulWidget {
  const PercentIndicatorPage({super.key});

  @override
  State<PercentIndicatorPage> createState() => _PercentIndicatorPageState();
}

class _PercentIndicatorPageState extends State<PercentIndicatorPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Percent indicator"),
        ),
        body: Column(
          children: [
            CircularPercentIndicator(
              radius: 60.0,
              percent: 0.5,
              lineWidth: 5.0,
              center: const Text("100%"),
              progressColor: Colors.green,
            ),
            CircularPercentIndicator(
              percent: 0.4,
              radius: 120.0,
              animation: true,
              lineWidth: 15.0,
              animationDuration: 1200,
              center: const Text(
                "40 hours",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              progressColor: Colors.red,
              backgroundColor: Colors.yellow,
              circularStrokeCap: CircularStrokeCap.butt,
            ),
            LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              percent: 0.9,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2000,
              center: const Text("90.0%"),
              progressColor: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
