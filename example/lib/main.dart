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
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Expendable Floating Fab Example'),
            ),
            body: Center(
              child: Text('Click on bottom right floating button to shine'),
            ),
            floatingActionButton: ExpendableFab(
              distance: 150,
              icon: Icon(Icons.favorite),
              closeIcon: Icon(Icons.delete),
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
          );
        },
      ),
    );
  }

  toast(BuildContext context, String action) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Selected $action")),
    );
  }
}
