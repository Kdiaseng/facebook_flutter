import 'package:facebook_flutter/models/user.dart';

class Post {
  final User user;
  final String description;
  final String lastTime;
  final String urlImage;
  final int likes;
  final int countCometary;
  final int shared;

  Post({
    required this.user,
    required this.description,
    required this.lastTime,
    required this.urlImage,
    required this.likes,
    required this.countCometary,
    required this.shared,
  });
}
