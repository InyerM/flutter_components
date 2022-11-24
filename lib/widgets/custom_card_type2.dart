import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String? title;
  final String image;

  const CustomCardType2({super.key, this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(image),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (title != null)
            Container(
              padding: const EdgeInsets.all(12),
              child: Text(
                title!,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            )
        ],
      ),
    );
  }
}
