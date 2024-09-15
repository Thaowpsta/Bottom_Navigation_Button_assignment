import 'package:assignment17/shared/page_layout_content.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageLayoutContent(icon: Icons.search, title: 'Find What You Need!', buttonICon: Icons.search, buttonName: 'Start Searching');
  }
}
