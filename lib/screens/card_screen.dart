import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cards'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          children: const [
            CustomCardType1(),
            SizedBox(height: 20),
            CustomCardType2(
                image:
                    'https://www.state.gov/wp-content/uploads/2019/04/Canada-e1556023963820-2500x1406.jpg',
                title: 'Un paisaje hermoso de Canadá'),
            SizedBox(height: 20),
            CustomCardType2(
                image:
                    'https://www.commonwealthfund.org/sites/default/files/styles/countries_hero_desktop/public/country_image_Canada.jpg?h=f2fcf546&itok=Ol_SqhVd',
                title: 'Canada Commonwealth Fund'),
            SizedBox(height: 20),
            CustomCardType2(
              image:
                  'https://a.cdn-hotels.com/gdcs/production159/d204/01ae3fa0-c55c-11e8-9739-0242ac110006.jpg',
            ),
          ],
        ));
  }
}
