import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Avatar Screen')),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.indigo[900],
            child: const Text('SL'),
          ),
          const SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage:
              NetworkImage('https://www.woolha.com/media/2020/03/eevee.png'),
          radius: 100.0,
        ),
      ),
    );
  }
}
