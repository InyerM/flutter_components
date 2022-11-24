import 'package:flutter/material.dart';
import 'package:flutter_components/themes/themes.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Icon(
            Icons.photo_album_outlined,
            color: AppTheme.primaryColor,
          ),
          title: Text('The Enchanted Nightingale'),
          subtitle: Text(
              'Eu est pariatur pariatur nisi velit eu nulla elit cillum. Aute quis magna in magna pariatur do sit non consequat sit quis nisi elit.'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              child: const Text('CANCEL'),
              onPressed: () {},
            ),
            const SizedBox(width: 8),
            TextButton(
              child: const Text('OK'),
              onPressed: () {},
            ),
            const SizedBox(width: 8),
          ],
        )
      ],
    ));
  }
}
