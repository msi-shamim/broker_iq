import 'package:broker_iq/registration/page_register_user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterUserEmail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _UserEmail();
  }

}

class _UserEmail extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserEmailState();
  }
}

class _UserEmailState extends State<_UserEmail>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Email Address'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              child: Container(
                margin: EdgeInsets.all(16.0),
                child: SvgPicture.asset('assets/r_email_envelop.svg'),
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
                        style: TextStyle(color: Colors.black45),),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email Address'
                        ),

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      child: Text("Once your account is created, \nwe will send you a verification link to this email.",
                      style: TextStyle(color: Colors.black45),),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterUserInfo()));
                      }, child: Text('Continue', style: TextStyle(color: Colors.black87),)),
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