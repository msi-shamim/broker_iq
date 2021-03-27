import 'package:broker_iq/registration/page_active_notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pin_put/pin_put.dart';

class VerifyPhoneNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _Verify();
  }
}

class _Verify extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _VerifyState();
  }
}

class _VerifyState extends State<_Verify> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.green, width: 3.0),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Verification'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(16.0),
              child: SvgPicture.asset('assets/r_otp_verification.svg'),
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
                      child: Text(
                          'We have sent you 6 digit OTP (One Time Passcode). \nSubmit that below:',
                      style: TextStyle(color: Colors.black45),),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Form(
                        key: _formKey,
                        child: PinPut(
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return 'OTP Required!';
                            }else if(value.length < 6){
                              return 'OTP cannot be less than 6 digit!';
                            }
                            return null;
                          },
                          fieldsCount: 6,
                          onSubmit: (String pin) => _showSnackBar(pin, context),
                          focusNode: _pinPutFocusNode,
                          controller: _pinPutController,
                          submittedFieldDecoration: _pinPutDecoration.copyWith(
                              borderRadius: BorderRadius.circular(20.0)),
                          selectedFieldDecoration: _pinPutDecoration,
                          followingFieldDecoration: _pinPutDecoration.copyWith(
                              borderRadius: BorderRadius.circular(5.0),
                              border:
                                  Border.all(color: Colors.black45, width: 2.0)),
                          inputDecoration: InputDecoration(
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            if(_formKey.currentState!.validate()){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          NotificationConfirmation()));
                            }
                          },
                          child: Text(
                            'Verify OTP',
                            style: TextStyle(color: Colors.black87),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showSnackBar(String pin, BuildContext context) {
    final snackBar = SnackBar(
      content: Container(
        height: 80.0,
        child: Center(
          child: Text(
            'Submit Code: $pin',
            style: TextStyle(fontSize: 24.0, color: Colors.black87),
          ),
        ),
      ),
      backgroundColor: Colors.yellow,
    );
    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
