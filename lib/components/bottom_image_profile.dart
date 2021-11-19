import 'package:facebook_flutter/components/image_profile.dart';
import 'package:facebook_flutter/models/user.dart';
import 'package:flutter/material.dart';

class ButtonImageProfile extends StatelessWidget {
  final User user;
  final VoidCallback onTap;

  const ButtonImageProfile({
    Key? key,
    required this.user,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageProfile(
            imageUrl: user.urlImage,
            isVisible: false,
          ),
          const SizedBox(
            width: 8,
          ),
          Flexible(
            child: Text(
              user.name,
              style: const TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
