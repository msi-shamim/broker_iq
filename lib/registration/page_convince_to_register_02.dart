import 'package:broker_iq/registration/page_convince_to_register_03.dart';
import 'package:flutter/material.dart';

class ConvinceRegistration02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Why BROKERIQ?'),
      ),
      body: _Benefits(),
    );
  }

}

class _Benefits extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BenefitsState();
  }
}

class _BenefitsState extends State<_Benefits> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child:
              Align(
                alignment: FractionalOffset.center,
                child: Image.asset('assets/convince_02_find_all.png',
                  fit: BoxFit.fitWidth,),
              ),
            ),
          ),
          Expanded(child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Wrap(
              children: [
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Connect with all of our brokers',
                      style: TextStyle(fontSize: 24.0),),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Multiple insurance policies with different brokers?'
                        '\nConnect with them all through our integrated insurance storage system',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black54
                      ),),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ConvinceRegistration03()));
                    },
                        child: Text('Next', style: TextStyle(color: Colors.black87),)),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}