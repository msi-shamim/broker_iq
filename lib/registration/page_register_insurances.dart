import 'package:broker_iq/registration/page_registration_complete.dart';
import 'package:flutter/material.dart';

class RegisterInsurances extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _Insurances();
  }
}

class _Insurances extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InsurancesState();
  }
}

final List<String> _products = [
  'Products with KGB',
  'Home',
  'Life',
  'Critical Illness',
  'Income Protection',
  'Health',
  'Landlord',
  'Car',
  'Van',
  'Tradesman',
  'Travel',
  'Pet',
  'Business',
  'Public Liability',
  'Others'
];

final List<String> _onlineInsurances = [
  'Do you buy any insurance products online?',
  'Yes',
  'No'
];

class _InsurancesState extends State<_Insurances> {
  String product = "Products with KGB";
  String onlineInsurance = 'Do you buy any insurance products online?';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Insurance Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            child: Wrap(
              children: [
                Container(
                  margin: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Let's do a quick audit of your insurances.",
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: DropdownButton(
                      icon: Icon(Icons.keyboard_arrow_down),
                      elevation: 16,
                      onChanged: (String? newValue) {
                        setState(() {
                          product = newValue!;
                        });
                      },
                      isExpanded: true,
                      underline: Container(
                        height: 2.0,
                        color: Colors.green,
                      ),
                      value: product,
                      items: _products
                          .map<DropdownMenuItem<String>>((String value) =>
                              DropdownMenuItem<String>(
                                  value: value, child: Text(value)))
                          .toList()),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Do you use any other brokers? Let's include them in you information.",
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Broker Name', border: OutlineInputBorder()),
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
                                builder: (context) => RegistrationComplete()));
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.black87),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
