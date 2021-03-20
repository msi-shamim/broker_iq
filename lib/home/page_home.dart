import 'package:broker_iq/home/fragment_documents.dart';
import 'package:broker_iq/home/fragment_insights.dart';
import 'package:broker_iq/home/fragment_notification.dart';
import 'package:broker_iq/home/fragment_overview.dart';
import 'package:broker_iq/home/fragment_policies.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _Home();
  }
}

class _Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<_Home> {
  int _selectedIndex = 0;
  static TextStyle _optionStyle = TextStyle(
    fontSize: 18.0,
  );
  List<Widget> _navBarItems = [
    OverviewFragment(),
    InsightFragment(),
    NotificationFragment(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BrokerIQ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: _navBarItems.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Overview',),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline),
              label: 'Insights',),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active_outlined),
              label: 'Notifications',)
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black38,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedLabelStyle: _optionStyle,
      ),
    );
  }
}
