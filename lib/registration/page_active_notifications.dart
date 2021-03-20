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
            child: Align(
              alignment: FractionalOffset.center,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 48.0, horizontal: 0.0),
                child: Wrap(children: [
                  Container(
                    width: double.infinity,
                    child: Icon(
                      Icons.notifications_active,
                      size: 75.0,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "BrokerIQ - Would like to Send you Notifications",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0, horizontal: 8.0),
                      child: Text(
                        "Notifications may include alerts, sounds and icon badges. These can be configured in Settings.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                width: double.infinity,
                color: Colors.black12,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 48.0, horizontal: 8.0),
                  child: Wrap(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'We will send your notification to keep you up to date with your policies. When your renewal is up and you need to contract your broker.',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> UserAddress()));
                              },
                              child: Text(
                                'Decide later',
                                style: TextStyle(color: Colors.blue),
                              )),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> UserAddress()));
                              },
                              child: Text(
                                'Get Notified',
                                style: TextStyle(color: Colors.black87, fontSize: 20.0),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
