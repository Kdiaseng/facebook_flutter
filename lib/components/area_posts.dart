import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter/models/user.dart';
import 'package:flutter/material.dart';

class AreaPosts extends StatelessWidget {
  final User user;

  const AreaPosts({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[200],
                backgroundImage: CachedNetworkImageProvider(user.urlImage),
              ),
              const SizedBox(width: 10),
              const Expanded(
                  child: TextField(
                decoration:
                    InputDecoration.collapsed(hintText: 'No que está pensando?'),
              ))
            ],
          ),
          const Divider(height: 10, thickness: 0.5),
          SizedBox(
            height: 40,
            child: Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    icon: const Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                    label: const Text(
                      'Ao vivo',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const VerticalDivider(width: 8),
                Expanded(
                  child: TextButton.icon(
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                    label: const Text(
                      'Foto',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const VerticalDivider(width: 8),
                Expanded(
                  child: TextButton.icon(
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.purple,
                    ),
                    onPressed: () {},
                    label: const Text(
                      'Sala',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
