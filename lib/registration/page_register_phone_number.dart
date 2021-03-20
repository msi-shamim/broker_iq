import 'package:broker_iq/registration/page_register_verify_phonenumber.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: _Registration(),
    );
  }

}

class _Registration extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegistrationState();
  }
}

class _RegistrationState extends State<_Registration>{
  final List<String> _items = [
    '+88 BD', '+44 UK',
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/register_phone_number.png'),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Wrap(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("We use your phone number to identify your account with your broker. \nPlease enter it below."),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        obscureText: false,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.call),
                            prefixText: '(+44) ',
                            enabledBorder: OutlineInputBorder(),
                            labelText: 'Phone number'),
                        cursorColor: Colors.green,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyPhoneNumber()));
                      },
                          child: Text(
                            'Verify Phone Number',
                            style: TextStyle(color: Colors.black87),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}