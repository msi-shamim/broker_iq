import 'package:broker_iq/home/page_home.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  Future<void> _showDialog() async{
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('API not integrated'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Facebook and Google API is not integrated yet.'),
                Text('Would you like to contact the developer now?')
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text(
                    'CANCEL'
                )),
            TextButton(
                onPressed: (){},
                child: Text(
              'CONTACT'
            )),
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Email required!';
                        } else if(!EmailValidator.validate(value)){
                          return 'Invalid Email!';
                        }
                        return null;
                      },
                      obscureText: false,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.mail_outline)
                      ),
                      cursorColor: Colors.green,
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Password required!';
                        }else if(value.length < 8){
                          return 'Password cannot be less than 8 Characters!';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock_outline)
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
                    child: Text(
                      "We don't share or sell your data. \nAny kinds of information related to you is only used for you and your broker connection build up.",
                      style: TextStyle(color: Colors.black38),),
                  ),
                ),
                Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            if(_formKey.currentState!.validate()){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.black87),
                          )),
                    )),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        color: Colors.black26,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Container(
                        child: Text(
                          'OR',
                          style: TextStyle(backgroundColor: Colors.white,
                          color: Colors.black45),
                        ),
                      )),
                    )
                  ],
                ),
                Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            _showDialog();
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blueAccent)),
                          child: Text(
                            'Facebook',
                            style: TextStyle(color: Colors.white),
                          )),
                    )),
                Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            _showDialog();
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red)),
                          child: Text(
                            'Google',
                            style: TextStyle(color: Colors.white),
                          )),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
