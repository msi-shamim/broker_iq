import 'package:broker_iq/registration/page_convince_to_register_02.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConvinceRegistration01 extends StatelessWidget {
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
              child: SvgPicture.asset('assets/convince_01_easy_way.svg')),
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
                  margin: EdgeInsets.all(8.0),
                  child: Text(
                    'Insurance the easy way',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: Text(
                    'Store all of the insurances on your phone. Get instant notifications when your policies are due to expire.'
                    'Never miss a renewal date again.',
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
                                    ConvinceRegistration02()));
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
