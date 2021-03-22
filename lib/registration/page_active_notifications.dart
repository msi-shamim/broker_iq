import 'dart:ui';

import 'package:broker_iq/registration/page_register_user_address.dart';
import 'package:flutter/material.dart';

class NotificationConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _Notification();
  }
}

class _Notification extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NotificationState();
  }
}

class _NotificationState extends State<_Notification> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Wrap(children: [
                Container(
                  margin: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.notifications_active,
                    size: 75.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 0.0),
                  child: Text(
                    "BrokerIQ - Would like to Send you Notifications",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 0.0),
                  child: Text(
                    "Notifications may include alerts, sounds and icon badges. These can be configured in Settings.",
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              color: Color.fromARGB(13, 0, 0, 0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Wrap(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
                      child: Text(
                        'We will send your notification to keep you up to date with your policies. When your renewal is up and you need to contract your broker.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black45
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserAddress()));
                          },
                          child: Text(
                            'Decide later',
                            style: TextStyle(color: Colors.blue),
                          )),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserAddress()));
                          },
                          child: Text(
                            'GET NOTIFIED',
                            style:
                                TextStyle(color: Colors.green, fontSize: 18.0),
                          )),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
