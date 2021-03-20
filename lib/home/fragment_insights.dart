import 'package:flutter/material.dart';

class InsightFragment extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InsightState();
  }

}

class _InsightState extends State<InsightFragment>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.lightbulb, size: 100.0, color: Colors.black38,),
        Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Insights',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 48.0,
                  color: Colors.black38
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Insights will be shown here!',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}