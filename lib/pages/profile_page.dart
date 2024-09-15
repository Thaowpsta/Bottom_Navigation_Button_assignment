import 'package:assignment17/shared/page_layout_content.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayoutContent(icon: Icons.person_outline, title: 'Your Profile', buttonICon: Icons.edit, buttonName: 'Edit Profile');
  }
}
