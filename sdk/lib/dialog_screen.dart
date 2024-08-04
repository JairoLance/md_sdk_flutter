import 'package:flutter/material.dart';

class DialogScreen extends StatefulWidget {
  final String parameter;

  DialogScreen({required this.parameter});

  @override
  _DialogScreenState createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _showDialog('Dialog 1'),
              child: Text('Show Dialog 1'),
            ),
            ElevatedButton(
              onPressed: () => _showDialog('Dialog 2'),
              child: Text('Show Dialog 2'),
            ),
            ElevatedButton(
              onPressed: () => _showDialog('Dialog 3'),
              child: Text('Show Dialog 3'),
            ),
          ],
        ),
      ),
    );
  }

  void _showDialog(String dialogTitle) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(dialogTitle),
          content: Text('Parameter: ${widget.parameter}'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
