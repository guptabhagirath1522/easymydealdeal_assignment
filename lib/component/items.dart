import 'package:flutter/material.dart';

class IconWithPriceDrop extends StatelessWidget {
  final String imagePath;
  final String text;
  final bool showPriceDrop;

  const IconWithPriceDrop({
    Key? key,
    required this.imagePath,
    required this.text,
    this.showPriceDrop = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 28.0,
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: showPriceDrop
              ? Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade600,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: const Text(
                    'PRICE DROP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : null,
        ),
        const SizedBox(height: 8.0),
        Image.asset(
          imagePath,
          height: 50.0,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 8.0),
        Text(
          text,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 10.0,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
