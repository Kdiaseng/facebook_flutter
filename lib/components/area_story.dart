import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter/models/models.dart';
import 'package:flutter/material.dart';

class AreaStory extends StatelessWidget {
  final User user;
  final List<Story> stories;

  const AreaStory({
    Key? key,
    required this.user,
    required this.stories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 200,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: CardStory(
            story: stories[index],
          ),
        ),
      ),
    );
  }
}

class CardStory extends StatelessWidget {
  final Story story;

  const CardStory({Key? key, required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: story.urlImage,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
