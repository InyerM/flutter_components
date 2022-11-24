import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Alert Dialog'),
          content: const Text('This is an alert dialog.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Alert Dialog'),
          content: const Text('This is an alert dialog.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                if (Theme.of(context).platform == TargetPlatform.android) {
                  return displayDialogAndroid(context);
                }
                displayDialogIOS(context);
              },
              child: const Text('Show Alert'))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.close),
      ),
    );
  }
}
