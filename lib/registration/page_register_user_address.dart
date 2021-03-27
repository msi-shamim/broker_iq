import 'package:broker_iq/registration/page_register_user_fullname.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Your Address'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.all(16.0),
            child: SvgPicture.asset('assets/r_address_location_pick.svg'),
          )),
          Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                color: Color.fromARGB(13, 0, 0, 0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Wrap(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
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
                          items:
                              _items.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                                value: value, child: Text(value));
                          }).toList(),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8.0),
                        child: Text(
                          "We don't share or sell your data. \nAny kinds of information related to you is only used for you and your broker connection build up.",
                          style: TextStyle(color: Colors.black45),
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
                                          RegisterUserFullName()));
                            },
                            child: Text(
                              'Continue',
                              style: TextStyle(color: Colors.black87),
                            )),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
