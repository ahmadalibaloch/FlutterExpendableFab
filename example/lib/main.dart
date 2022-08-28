import 'package:flutter/material.dart';
import 'package:expendable_fab/expendable_fab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldkey,
        appBar: AppBar(
          title: const Text('Expendable Floating Fab Example'),
        ),
        body: Center(
          child: Text('Click on bottom right floating button to shine'),
        ),
        floatingActionButton: ExpendableFab(
          distance: 2.0,
          icon: Icon(Icons.favorite), // Custom initial icon
          //closeIcon: Icon(Icons.delete), // Custom close icon
          children: [
            ActionButton(
              onPressed: () => toast(context, 'balance'),
              icon: const Icon(Icons.account_balance),
            ),
            ActionButton(
              onPressed: () => toast(context, 'money'),
              icon: const Icon(Icons.money),
            ),
            ActionButton(
              onPressed: () => toast(context, 'credit card'),
              icon: const Icon(Icons.credit_card),
            ),
            ActionButton(
              onPressed: () => toast(context, 'file copy'),
              icon: const Icon(Icons.file_copy),
            ),
          ],
        ),
      ),
    );
  }

  toast(BuildContext context, String action) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Selected $action")),
    );
  }
}
