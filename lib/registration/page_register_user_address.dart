import 'package:broker_iq/registration/page_register_user_fullname.dart';
import 'package:flutter/material.dart';

class UserAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _Address();
  }
}

class _Address extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddressState();
  }
}

final List<String> _items = [
  'Select Address',
  'Fürstenbirn',
  'Siezenbühel',
  'Andercroen',
  'Oostden',
  'Draguithune',
  'Auriluçon',
  'Vohendorf',
  'Ennewagen',
  'Thurport',
  'Killow',
  'Drachlem',
  'Brederend',
  'Amrisdon',
  'Bischofkirch',
  'Zeltben',
  'Brauben',
  'Torten',
  'Knoklecht',
  'Gonoît',
  'Orluçon',
  'Waldmölsen',
  'Cloppengries',
  'Galdoran',
  'Balstone',
  'Nieuweburg',
  'Noorderwaard',
  'Menschwil',
  'Klingnau',
];

class _AddressState extends State<_Address> {
  String dropdownValue = 'Select Address';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Your Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                flex: 2,
                child: Container(
              child: Align(
                alignment: FractionalOffset.center,
                child: Image.asset('assets/r_address_location_pick.png', fit: BoxFit.fitWidth,),
              ),
            )),
            Expanded(
                child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Wrap(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "We don't share or sell your data. \nAny kinds of information related to you is only used for you and your broker connection build up.",
                        style: TextStyle(color: Colors.black38),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                        value: dropdownValue,
                        icon: Icon(Icons.keyboard_arrow_down),
                        elevation: 16,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        isExpanded: true,
                        underline: Container(
                          height: 2.0,
                          color: Colors.green,
                        ),
                        items: _items
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                              value: value, child: Text(value));
                        }).toList(),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RegisterUserFullName()));
                          },
                          child: Text(
                            'Continue',
                            style: TextStyle(color: Colors.black87),
                          )),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
