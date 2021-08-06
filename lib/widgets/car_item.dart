import 'package:flutter/material.dart';
import '../widgets/text_title.dart';
import '../models/car.dart';

class CarItem extends StatelessWidget {
  final String brand;
  final String model;
  final String licensePlate;
  final String color;

  const CarItem({
    this.brand,
    this.model,
    this.licensePlate,
    this.color,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Color.fromRGBO(204, 227, 222, 1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.white24,
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 7),
          )
        ]
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: 165,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const TextTitle('Brand: '),
                    Text('$brand'),
                  ],
                ),
                Row(
                  children: [
                    const TextTitle('Model: '),
                    Text('$model'),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const TextTitle('License Plate: '),
                  Text('$licensePlate'),
                ],
              ),
              Row(
                children: [
                  const TextTitle('Color: '),
                  Text('$color'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
