import 'package:broker_iq/registration/page_register_phone_number.dart';
import 'package:flutter/material.dart';

class ConvinceRegistration03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's get started!"),
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

final List<String> _items = [
  'We will ask for a few personal details, \nwhich we will use to open your BrokerIQ account and manage your insurance data',
  'We will ask for to select the Brokers you hold policies with',
  'We will ask for the select the polices you hold'
];
final List<IconData> _itemIcons = [
  Icons.person_outline,
  Icons.business_center_outlined,
  Icons.contact_page_outlined
];

class _BenefitsState extends State<_Benefits> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          flex: 3,
          child: Container(
            margin: EdgeInsets.all(16.0),
            child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
                    child: ListTile(
                      title: Text('${_items[index]}'),
                      leading: Icon(
                        _itemIcons[index],
                        size: 40.0,
                      ),
                    ),
                  );
                }),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            color: Color.fromARGB(13, 0, 0, 0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                children: [
                  Container(
                    margin: EdgeInsets.all(2.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Happy to sign up?',
                      style: TextStyle(fontSize: 24.0, color: Colors.black45),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(2.0),
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationScreen()));
                      },
                      child: Text(
                        'GET STARTED',
                        style: TextStyle(color: Colors.green, fontSize: 18.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
