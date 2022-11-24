import 'package:flutter/material.dart';
import 'package:flutter_components/themes/themes.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100.0;
  bool _sliderBlock = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: <Widget>[
          Slider.adaptive(
            value: _sliderValue,
            min: 0,
            max: 400,
            activeColor: AppTheme.primaryColor,
            onChanged: _sliderBlock
                ? null
                : (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  },
          ),
          const SizedBox(height: 20),
          CheckboxListTile(
            title: const Text('Block Slider'),
            value: _sliderBlock,
            activeColor: AppTheme.primaryColor,
            onChanged: (value) => setState(() => _sliderBlock = value ?? false),
          ),
          SwitchListTile.adaptive(
            title: const Text('Block Slider'),
            value: _sliderBlock,
            activeColor: AppTheme.primaryColor,
            onChanged: (value) => setState(() => _sliderBlock = value),
          ),
          const AboutListTile(),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                  image: const NetworkImage(
                      'https://static.wikia.nocookie.net/personajes-de-ficcion-database/images/d/d9/Goku_DBZ_Base.png/revision/latest?cb=20201216115006&path-prefix=es'),
                  fit: BoxFit.contain,
                  width: _sliderValue),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
