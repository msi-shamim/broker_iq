import 'package:flutter/material.dart';

class NotificationFragment extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NotificationState();
  }

}

class _NotificationState extends State<NotificationFragment>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.notifications, size: 100.0, color: Colors.black38,),
        Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Notifications',
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
              'Notifications will be shown here!',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}