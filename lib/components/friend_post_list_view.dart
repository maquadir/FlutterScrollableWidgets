import 'package:flutter/material.dart';

import '../models/post.dart';
import 'friend_post_tile.dart';

class FriendPostListView extends StatelessWidget {
  final List<Post> friendPosts;

  const FriendPostListView({super.key, required this.friendPosts});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Social Chefs 👩‍🍳',
                style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 16,
            ),
            ListView.separated(
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final post = friendPosts[index];
                  return FriendPostTile(post: post);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
                itemCount: friendPosts.length),
            const SizedBox(
              height: 16,
            )
          ],
        ));
  }
}
