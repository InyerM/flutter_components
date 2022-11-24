import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 1'),
      ),
      body: ListView(
        children: [
          ...options.map((option) => ListTile(
                title: Text(option),
                leading: const Icon(Icons.ac_unit),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              )),
        ],
      ),
    );
  }
}
