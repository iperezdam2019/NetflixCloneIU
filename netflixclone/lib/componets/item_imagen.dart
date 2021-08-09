import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/breakingBad.PNG',
            width: 100.0, fit: BoxFit.cover),
            SizedBox(width: 10.0)
      ],
    );
  }
}
