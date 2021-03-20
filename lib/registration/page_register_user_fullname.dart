import 'package:broker_iq/registration/page_register_user_dob.dart';
import 'package:flutter/material.dart';

class RegisterUserFullName extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _UserFullName();
  }

}

class _UserFullName extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserFullNameState();
  }
}

final List<String> _titles = ['Title','Mr', 'Mrs', 'Miss', 'Dr', 'Others'];

class _UserFullNameState extends State<_UserFullName>{
  String title = "Title";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Full Name'
        ),
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
                    child: Image.asset('assets/r_about_gender_title.png', fit: BoxFit.fitWidth,),
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
                        child: Text("We don't share or sell your data. Any kinds of information related to you is only used for you and your broker connection build up.",
                          style: TextStyle(color: Colors.black38),),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Full Name',
                            enabledBorder: OutlineInputBorder(),
                            prefixIcon: _titleDropdown(),

                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterUserDOB()));
                        },
                            child: Text('Continue', style: TextStyle(color: Colors.black87),)),
                      ),
                    )
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }


  _titleDropdown() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
      child: DropdownButton(
        value: title,
        icon:  Icon(Icons.keyboard_arrow_down),
        elevation: 16,
        onChanged: (String? newValue){
          setState(() {
            title = newValue!;
          });
        },
        isExpanded: false,
          underline: Container(height: 0.0,),
        items: _titles.map((String value){
          return DropdownMenuItem(
              value: value,
              child: Text(value),
          );
        }).toList()),
    );
  }
}