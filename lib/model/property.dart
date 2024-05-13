import 'package:flutter/material.dart';

class Property {
  final String name;
  final IconData icon;

  Property({required this.name, required this.icon});
}

final List<Property> properties = [
  Property(name: "Propiedad 1", icon: Icons.home),
  Property(name: "Propiedad 2", icon: Icons.apartment),
  Property(name: "Propiedad 3", icon: Icons.business),
];