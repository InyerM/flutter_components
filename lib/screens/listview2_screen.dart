import 'package:flutter/material.dart';
import 'package:flutter_components/themes/themes.dart';

class ListView2Screen extends StatelessWidget {
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

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(options[index]),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: AppTheme.primaryColor,
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}
