import 'package:broker_iq/registration/page_register_user_info.dart';
import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: Align(
                    alignment: FractionalOffset.center,
                    child: Image.asset('assets/r_email_envelop.png', fit: BoxFit.fitWidth,),
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
                        child: Text("We don't share or sell your data. \nAny kinds of information related to you is only used for you and your broker connection build up.",
                          style: TextStyle(color: Colors.black38),),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email Address'
                          ),

                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Once your account is created, \nwe will send you a verification link to this email."),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterUserInfo()));
                        }, child: Text('Continue', style: TextStyle(color: Colors.black87),)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}