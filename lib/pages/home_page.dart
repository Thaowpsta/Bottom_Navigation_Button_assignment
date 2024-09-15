import 'package:assignment17/shared/page_layout_content.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayoutContent(icon: Icons.home_outlined, title: 'Welcome Home!', buttonICon: Icons.explore, buttonName: 'Explore',);

  }
}
