import 'package:broker_iq/registration/page_register_verify_phonenumber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                    child: Text("We use your phone number to identify your account with your broker. \nPlease enter it below.",
                    style: TextStyle(color: Colors.black45),),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
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
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyPhoneNumber()));
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