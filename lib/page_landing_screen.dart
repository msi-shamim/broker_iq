import 'package:broker_iq/registration/page_convince_to_register_01.dart';
import 'package:broker_iq/login/page_login_email_password.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final List<String> imgList = [
  'assets/landing_01_security.svg',
  'assets/landing_02_Policy_Vault.svg',
  'assets/landing_03_Document_Vault.svg',
];

final List<String> imgTitles = [
  'Fully Secured',
  'Policy Vault',
  'Document Vault'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          width: double.infinity,
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  SvgPicture.asset(
                    item,
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(168, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        imgTitles[imgList.indexOf(item)],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ))
    .toList();

class LandingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LandingScreenState();
  }
}

class _LandingScreenState extends State<LandingScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  double _currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          "BrokerIQ",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: Wrap(children: [
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: CarouselWithIndicator(),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text('BrokerIQ', style: TextStyle(fontSize: 24.0),),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text('This is BrokerIQ and that is our slogan.'),
                )
              ]),
            ),
          ),
          //3. Login outline button
          Expanded(
              child: Container(
            alignment: Alignment.bottomCenter,
            color: Color.fromARGB(13, 0, 0, 0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.green, fontSize: 18.0),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConvinceRegistration01()));
                      },
                      child: Text(
                        "I'm new to BIQ",
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}

class CarouselWithIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: imageSliders,
        options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.map((url) {
          int index = imgList.indexOf(url);
          return Container(
            width: 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _current == index
                  ? Color.fromRGBO(0, 0, 0, 0.9)
                  : Color.fromRGBO(0, 0, 0, 0.4),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
