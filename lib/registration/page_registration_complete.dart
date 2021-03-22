import 'package:broker_iq/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegistrationComplete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _Complete();
  }
}

class _Complete extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CompletionState();
  }
}

class _CompletionState extends State<_Complete> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Congratulations'),
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
              child: Text(
                'You have completed your details, \nWe are checking your information.',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              alignment: Alignment.center,
              child: Text(
                'Thank you for registering. \nYou will soon able to log into your BrokerIQ account.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black45),
              ),
            ),
            Container(
              height: 200.0,
              margin: EdgeInsets.all(8.0),
              child: SvgPicture.asset('assets/r_congrats_celebrate.svg'),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BrokerIQ()));
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.black87),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
