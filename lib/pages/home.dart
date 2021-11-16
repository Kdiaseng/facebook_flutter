import 'package:facebook_flutter/components/area_posts.dart';
import 'package:facebook_flutter/components/area_story.dart';
import 'package:facebook_flutter/components/button_circle.dart';
import 'package:facebook_flutter/data/dados.dart';
import 'package:facebook_flutter/utils/pallet_colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            // expandedHeight: 250,
            floating: true,
            centerTitle: false,
            title: const Text(
              'facebook',
              style: TextStyle(
                  color: PalletColors.azulFaceFacebook,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: -1.2),
            ),
            actions: [
              ButtonCircle(
                icon: Icons.search,
                iconSize: 30,
                onPressed: () {},
              ),
              ButtonCircle(
                icon: LineIcons.facebookMessenger,
                iconSize: 30,
                onPressed: () {},
              )
            ],
          ),
          SliverToBoxAdapter(
            child: AreaPosts(
              user: userCurrent,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: AreaStory(
                user: userCurrent,
                stories: stories,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 2000,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
