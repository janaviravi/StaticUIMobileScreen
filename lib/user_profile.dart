import 'package:flutter/material.dart';
import 'package:task1/profile_header.dart';
import 'package:task1/user.dart'; // Import your User class
import 'package:task1/user_information.dart';
import 'package:task1/user_posts_grid.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  late User user;

  @override
  void initState() {
    super.initState();
    // Initialize the User object here
    user = User(
      name: 'Janavi',
      profilePictureAsset: 'images/profile.jpeg', 
      bio: 'Flutter Developer',
      email: 'janavi.r@melento.com',
      phone: '+91 7760103828',
      address: '123 Main St, City, Country',
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child:Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: SingleChildScrollView( //extra
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Profile Header Section
            ProfileHeader(
              name: user.name,
              profilePictureAsset: user.profilePictureAsset, // Updated field name
              bio: user.bio,
            ),
            // User Information Section
            UserInformation(
              email: user.email,
              phone: user.phone,
              address: user.address,
            ),
            // User Posts Grid Section
            const UserPostsGrid(
            ),
          ],
        ),
      ),
    )
  );
  }
}
