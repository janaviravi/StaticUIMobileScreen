import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String bio;
  final String profilePictureAsset;

  const ProfileHeader({
    required this.name,
    required this.bio,
    required this.profilePictureAsset,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(profilePictureAsset),
            radius: 40.0,
          ),
          const SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(bio),
            ],
          ),
        ],
      ),
    );
  }
}
