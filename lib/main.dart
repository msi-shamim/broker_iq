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
      debugShowMaterialGrid: false,
      showSemanticsDebugger: false,
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
    return Scaffold(
          key: _scaffoldKey,
          appBar: null,
          body: Builder(
            builder: (context) => Center(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      child: Image.asset("assets/logo.png"),
                    ),
                  ),
                  Expanded(child: Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                    alignment: Alignment.bottomCenter,
                    child: Text('All Rights Reserved | BrokerIQ : 2021',
                    style: TextStyle(color: Colors.black45),),
                  ))
                ],
              ),
            ),
          ));
  }
}
