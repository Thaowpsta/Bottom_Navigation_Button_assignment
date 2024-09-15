import 'package:flutter/material.dart';

class PageLayoutContent extends StatelessWidget {

  IconData icon ;
  String title;
  IconData buttonICon;
  String buttonName;

  PageLayoutContent({super.key, required this.icon, required this.title, required this.buttonICon, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.purpleAccent,
            size: 75,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.purpleAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    buttonICon,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    buttonName,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
