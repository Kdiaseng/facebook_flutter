import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter/components/image_profile.dart';
import 'package:facebook_flutter/models/post.dart';
import 'package:facebook_flutter/utils/pallet_colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CardPosts extends StatelessWidget {
  final Post post;

  const CardPosts({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          child: Row(
            children: [
              ImageProfile(isVisible: true, imageUrl: post.user.urlImage),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.user.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          '${post.lastTime} - ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500]),
                        ),
                        Icon(
                          Icons.public,
                          size: 12,
                          color: Colors.grey[600],
                        )
                      ],
                    )
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(post.description),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: CachedNetworkImage(
            imageUrl: post.urlImage,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: StatisticPost(
            post: post,
          ),
        )
      ],
    );
  }
}

class StatisticPost extends StatelessWidget {

  final Post post;

  const StatisticPost({
    Key? key,
    required this.post
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                  color: PalletColors.azulFaceFacebook,
                  shape: BoxShape.circle
              ),
              child: const Icon(
                Icons.thumb_up,
                size: 10,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 4,),
            Expanded(
                child: Text(
                  "${post.likes}",
                  style: TextStyle(
                      color: Colors.grey[700]
                  ),
                )
            ),
            Text(
              "${post.countCometary} comentários",
              style: TextStyle(
                  color: Colors.grey[700]
              ),
            ),
            const SizedBox(width: 8,),
            Text(
              "${post.shared} compartilhamentos",
              style: TextStyle(
                  color: Colors.grey[700]
              ),
            )
          ],
        ),
        const Divider(thickness: 1.2,),
        Row(
          children: [
            ButtonPost(
                icone: Icon(
                  LineIcons.thumbsUpAlt,
                  color: Colors.grey[700],
                ),
                texto: "Curtir",
                onTap: () {}
            ),
            ButtonPost(
                icone: Icon(
                  LineIcons.alternateCommentAlt,
                  color: Colors.grey[700],
                ),
                texto: "Comentar",
                onTap: () {}
            ),
            ButtonPost(
                icone: Icon(
                  LineIcons.share,
                  color: Colors.grey[700],
                ),
                texto: "Compartilhar",
                onTap: () {}
            ),
          ],
        )
      ],
    );
  }
}

class ButtonPost extends StatelessWidget {

  final Icon icone;
  final String texto;
  final VoidCallback onTap;

  const ButtonPost({
    Key? key,
    required this.icone,
    required this.texto,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Material(
          child: InkWell(
            onTap: onTap,
            child: Row(
              children: [
                icone,
                const SizedBox(width: 4,),
                Text(
                  texto,
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
