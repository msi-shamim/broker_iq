import 'package:broker_iq/registration/page_register_user_email.dart';
import 'package:flutter/material.dart';

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
                    child: Image.asset('assets/r_dob_birthday.png', fit: BoxFit.fitWidth,),
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
                              hintText: 'DD/MM/YYYY',
                              labelText: 'Date of Birth'
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterUserEmail()));
                        }, child: Text('Continue',
                          style: TextStyle(color: Colors.black87),)),
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