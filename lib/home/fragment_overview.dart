import 'package:broker_iq/models/insurance.dart';
import 'package:flutter/material.dart';

class OverviewFragment extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OverviewState();
  }

}

class _OverviewState extends State<OverviewFragment>{
  List<Insurance> _items = [
    Insurance.allData('Life and Critical Illness', 'Broker KGB\nAVIVA', '24th Sep 21', 10000.0),
    Insurance.allData('Car', 'Broker Autoline\nAXA', '12th Mar 21', 0.0),
    Insurance.allData('Pet', 'Broker Petuk\nPETFRND', '24th Jul 21', 100.0),
    Insurance.allData('Home', 'Broker DNC\nANNIE', '27th Aug 21', 100000.0),
    Insurance.allData('Life and Critical Illness', 'Broker KGB\nAVIVA', '24th Sep 21', 10000.0),
    Insurance.allData('Car', 'Broker Autoline\nAXA', '12th Mar 21', 0.0),
    Insurance.allData('Pet', 'Broker Petuk\nPETFRND', '24th Jul 21', 100.0),
    Insurance.allData('Home', 'Broker DNC\nANNIE', '27th Aug 21', 100000.0),
  ];
  List<IconData> _icons = [
    Icons.local_hospital_outlined,
    Icons.directions_car_outlined,
    Icons.pets_outlined,
    Icons.house_outlined,
    Icons.local_hospital_outlined,
    Icons.directions_car_outlined,
    Icons.pets_outlined,
    Icons.house_outlined,
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(

      itemCount: _items.length,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
          child: ListTile(
            title: Text(_items[index].title,
              style: TextStyle(fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Wrap(
              direction: Axis.vertical,
              children: [
              Text(_items[index].broker),
              Text(_items[index].renewalDate,
                style: TextStyle(color: Colors.red),
              ),
            ],),
            leading: Icon(_icons[index], size: 40.0, color: Colors.green,),
            trailing: Text(_items[index].amount.toString(),
            ),
          ),
        );
      },
    );
  }
}