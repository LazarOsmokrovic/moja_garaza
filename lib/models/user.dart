import 'package:flutter/material.dart';

class User {
  final String id;
  final String name;
  final String lastName;
  final String image;
  final String address;
  final String garageAddress;

  const User({
    this.id,
    this.name,
    this.lastName,
    this.image,
    this.address,
    this.garageAddress,
  });
}