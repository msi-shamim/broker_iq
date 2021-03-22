import 'package:broker_iq/registration/page_register_user_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterUserDOB extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _UserDOB();
  }

}

class _UserDOB extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserDOBState();
  }
}

class _UserDOBState extends State<_UserDOB>{
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
                      margin: EdgeInsets.all(8.0),
                      child: Text("We don't share or sell your data. \nAny kinds of information related to you is only used for you and your broker connection build up.",
                        style: TextStyle(color: Colors.black38),),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'DD/MM/YYYY',
                            labelText: 'Date of Birth'
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterUserEmail()));
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