import 'package:flutter/cupertino.dart';

import '../models/post.dart';
import 'circle_image.dart';

class FriendPostTile extends StatelessWidget {
  final Post post;

  const FriendPostTile({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleImage(
          imageProvider: AssetImage(post.profileImageUrl),
          imageRadius: 20,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.comment),
            Text('${post.timestamp} mins ago',
                style: const TextStyle(fontWeight: FontWeight.w700))
          ],
        ))
      ],
    );
  }
}
