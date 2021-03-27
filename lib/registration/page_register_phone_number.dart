import 'package:broker_iq/registration/page_register_verify_phonenumber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegistrationScreen extends StatelessWidget {
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

class _Registration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegistrationState();
  }
}


class _RegistrationState extends State<_Registration> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(16.0),
            child: SvgPicture.asset('assets/register_phone_number.svg'),
          ),
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
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Phone number required!';
                          } else if (value.length < 10) {
                            return 'Phone number cannot be less than 10 digit!';
                          }
                          return null;
                        },
                        obscureText: false,
                        keyboardType: TextInputType.phone,
                        maxLength: 10,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.call),
                            prefixText: '(+44) ',
                            border: OutlineInputBorder(),
                            labelText: 'Phone number'),
                        cursorColor: Colors.green,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: Text(
                      "We use your phone number to identify your account with your broker. \nPlease enter it below.",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VerifyPhoneNumber()));
                          }
                        },
                        child: Text(
                          'Verify Phone Number',
                          style: TextStyle(color: Colors.black87),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
