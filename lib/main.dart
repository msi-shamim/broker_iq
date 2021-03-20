import 'dart:async';

import 'package:broker_iq/utils/brokeriq_theme.dart';
import 'package:broker_iq/page_landing_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BrokerIQ());
}

class BrokerIQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'BrokerIQ',
      theme: Brokeriq.lightTheme,
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashState();
  }
}

class SplashState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LandingScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return MaterialApp(
      home: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "BROKER IQ",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black87),
            ),
          ),
          body: Builder(
            builder: (context) => Center(
              child: Container(
                width: 150.0,
                height: 150.0,
                child: Image.asset("assets/logo.png"),
              ),
            ),
          )),
    );
  }
}
