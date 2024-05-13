import 'package:flutter/material.dart' show Color;

class User {
  final String name, email, avatarSrc;
  final Color color;

  User({
    required this.name,
    required this.email,
    this.avatarSrc = "assets/avatar/default.png",
    this.color = const Color(0xFF3657BB),
  });
}

final List<User> userJohnDoe = [
  User(
    name: "John Doe",
    email: "john.doe@example.com",
  ),
];

final List<User> userJaneSmith = [
  User(
    name: "Jane Smith",
    email: "jane.smith@example.com",
    avatarSrc: "assets/avatar/jane.png",
  ),
];

final List<User> userAliceJohnson = [
  User(
    name: "Alice Johnson",
    email: "alice.johnson@example.com",
    avatarSrc: "assets/avatar/alice.png",
  ),
];

final List<User> userBobBrown = [
  User(
    name: "Bob Brown",
    email: "bob.brown@example.com",
    avatarSrc: "assets/avatar/bob.png",
  ),
];

final List<User> userEmmaWilson = [
  User(
    name: "Emma Wilson",
    email: "emma.wilson@example.com",
    avatarSrc: "assets/avatar/emma.png",
  ),
];

final List<User> userMichaelLee = [
  User(
    name: "Michael Lee",
    email: "michael.lee@example.com",
    avatarSrc: "assets/avatar/michael.png",
  ),
];
