import 'package:customerApp/src/purchase.dart';
import 'package:customerApp/src/tickets.dart';
import 'package:customerApp/widget/listProducts.dart';
import 'package:flutter/material.dart';
import './src/addComplaint.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      routes: {
        '/addComplaint': (context) => FormScreen(),
        '/purchase': (context) => Purchase(),
        '/tickets': (context) => Tickets(),
      },
      title: 'Esquire CustomerApp',
      home: HomePage(),
      
//home: ListProduct(),
    );
  }
}

class DemoInfo {
  final String demoTitle;
  final String demoRoute;

  DemoInfo(
    this.demoTitle,
    this.demoRoute,
  )   : assert(demoTitle != null),
        assert(demoRoute != null);
}

List<DemoInfo> demoList = [
  DemoInfo(
    'Register Complaint',
    '/addComplaint',
  ),
  DemoInfo('Purchase Product', '/purchase'),
  DemoInfo('Tickets', '/tickets'),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Esquire CustomerApp'),
      ),
      body: ListView(
        children: demoList.map((demoInfo) => DemoTile(demoInfo)).toList(),
      ),
    );
  }
}

class DemoTile extends StatelessWidget {
  final DemoInfo demoInfo;

  DemoTile(this.demoInfo);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(demoInfo.demoTitle),
      onTap: () {
        Navigator.pushNamed(context, demoInfo.demoRoute);
      },
    );
  }
}
