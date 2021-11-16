import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter/utils/pallet_colors.dart';
import 'package:flutter/material.dart';

class ImageProfile extends StatelessWidget {
  final String imageUrl;
  final bool isVisible;

  const ImageProfile({Key? key, required this.imageUrl, this.isVisible = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: PalletColors.azulFaceFacebook,
      child: CircleAvatar(
        radius: isVisible ? 20 : 18,
        backgroundColor: Colors.grey[200],
        backgroundImage: CachedNetworkImageProvider(imageUrl),
      ),
    );
  }
}
