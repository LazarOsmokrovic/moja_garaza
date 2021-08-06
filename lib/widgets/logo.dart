import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.amber,
      ),
      margin: const EdgeInsets.only(top: 30, bottom: 30),
      height: 50,
      alignment: Alignment.bottomCenter,
      child: const Text('MyGarage',
        style: TextStyle(
          fontFamily: 'Double-Seat',
          fontSize: 40,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}

