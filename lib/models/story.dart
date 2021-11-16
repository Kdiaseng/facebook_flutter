import 'package:facebook_flutter/models/user.dart';

class Story {
  User user;
  String urlImage;
  bool? isVisible;

  Story({required this.user, required this.urlImage, this.isVisible = false});
}
