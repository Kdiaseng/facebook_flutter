import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter/data/dados.dart';
import 'package:facebook_flutter/models/models.dart';
import 'package:facebook_flutter/utils/pallet_colors.dart';
import 'package:flutter/material.dart';

import 'image_profile.dart';

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
          itemCount: stories.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              final storyUser =
                  Story(user: userCurrent, urlImage: userCurrent.urlImage);

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: CardStory(
                  addStory: true,
                  story: storyUser,
                ),
              );
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CardStory(
                story: stories[index - 1],
              ),
            );
          }),
    );
  }
}

class CardStory extends StatelessWidget {
  final Story story;
  final bool addStory;

  const CardStory({Key? key, required this.story, this.addStory = false})
      : super(key: key);

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
        ),
        Container(
          decoration: BoxDecoration(
            gradient: PalletColors.degradeStory,
            borderRadius: BorderRadius.circular(12),
          ),
          width: 110,
          height: double.infinity,
        ),
        Positioned(
          top: 8,
          left: 8,
          child: addStory
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.add,
                      size: 30,
                      color: PalletColors.azulFaceFacebook,
                    ),
                    onPressed: () {},
                  ),
                )
              : ImageProfile(
                  imageUrl: story.user.urlImage,
                ),
        ),
        Positioned(
          left: 8,
          right: 8,
          bottom: 8,
          child: Text(
            addStory ? "Criar Story" :
            story.user.name,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
