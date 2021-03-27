import 'package:broker_iq/registration/page_convince_to_register_03.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConvinceRegistration02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Why BrokerIQ?'),
      ),
      body: _Benefits(),
    );
  }
}

class _Benefits extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BenefitsState();
  }
}

class _BenefitsState extends State<_Benefits> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              'assets/convince_02_find_all.svg'),
          ),
        ),
        Expanded(
            child: Container(
          color: Color.fromARGB(13, 0, 0, 0),
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              children: [
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: Text(
                    'Connect with all of our brokers',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: Text(
                    'Multiple insurance policies with different brokers?'
                    '\nConnect with them all through our integrated insurance storage system',
                    style: TextStyle(fontSize: 16.0, color: Colors.black45),
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
                                builder: (context) =>
                                    ConvinceRegistration03()));
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.black87),
                      )),
                )
              ],
            ),
          ),
        ))
      ],
    );
  }
}
