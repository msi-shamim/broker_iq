import 'package:broker_iq/main.dart';
import 'package:flutter/material.dart';

class RegistrationComplete extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _Complete();
  }
}

class _Complete extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CompletionState();
  }
}

class _CompletionState extends State<_Complete>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Congratulations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('You have completed your details, \nWe are checking your information.',
                style: TextStyle(fontSize: 22.0),
                textAlign: TextAlign.center,),
              ),
            ),
            SizedBox(height: 48.0,),

            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Thank you for registering. \nYou will soon able to log into your BrokerIQ account.',
                  textAlign: TextAlign.center,),
              ),
            ),
            Container(
              height: 200.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/congrats.png'),
              ),
            ),

            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> BrokerIQ()));
                },
                    child: Text('Continue', style: TextStyle(color: Colors.black87),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}