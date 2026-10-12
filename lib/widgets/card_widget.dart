import 'package:flutter/material.dart';

// Card: a box with shadow (elevation) and rounded corners.
class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          // 1. Simple card
          const Card(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text('A simple Card'),
            ),
          ),

          // 2. Card with elevation and color
          Card(
            elevation: 8,
            color: Colors.amber.shade100,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text('elevation: 8, rounded 16'),
            ),
          ),

          // 3. Post card (our own card widget below)
          const PostCard(
            userName: 'user_1',
            imageUrl: 'https://picsum.photos/seed/post1/600/400',
            caption: 'Day 1 at KSR',
            likes: 128,
          ),
          const PostCard(
            userName: 'user_2',
            imageUrl: 'https://picsum.photos/seed/post2/600/400',
            caption: 'Learning Flutter widgets',
            likes: 56,
          ),
        ],
      ),
    );
  }
}

// Our own card layout: header + image + likes + caption
class PostCard extends StatelessWidget {
  final String userName;
  final String imageUrl;
  final String caption;
  final int likes;

  const PostCard({
    super.key,
    required this.userName,
    required this.imageUrl,
    required this.caption,
    required this.likes,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      clipBehavior: Clip.antiAlias, // cut the image at the round corners
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header
          ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text(userName),
            trailing: const Icon(Icons.more_vert),
          ),
          // image
          Image.network(imageUrl, height: 200, width: double.infinity, fit: BoxFit.cover),
          // likes and caption
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.favorite, color: Colors.red),
                    const SizedBox(width: 6),
                    Text('$likes likes', style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 6),
                Text(caption),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
