import 'package:broker_iq/registration/page_register_user_email.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterUserDOB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _UserDOB();
  }

}

class _UserDOB extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserDOBState();
  }
}

class _UserDOBState extends State<_UserDOB> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Date of Birth'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: Container(
                margin: EdgeInsets.all(16.0),
                child: SvgPicture.asset('assets/r_dob_birthday.svg'),
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
                      child: Form(
                        key: _formKey,
                        child: DateTimePicker(
                          type: DateTimePickerType.date,
                          dateMask: 'dd/MM/yyyy',
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                          icon: Icon(Icons.event),
                          dateLabelText: 'Date of Birth',
                          selectableDayPredicate: (date){
                            if(date.weekday == 6 || date.weekday == 7){
                              return false;
                            }
                            return true;
                          },
                          validator: (val){
                            if(val == null || val.isEmpty){
                              return 'Date of Birth required!';
                            }
                            return null;
                          },

                        ),
                      )
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Text(
                        "We don't share or sell your data. \nAny kinds of information related to you is only used for you and your broker connection build up.",
                        style: TextStyle(color: Colors.black38),),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: () {
                        if(_formKey.currentState!.validate()){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => RegisterUserEmail()));
                        }
                      }, child: Text('Continue',
                        style: TextStyle(color: Colors.black87),)),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}