import 'package:flutter/material.dart';

class CatagoriesList extends StatelessWidget {
  final String image;
  final String title;
  final Color color;
  const CatagoriesList({super.key, required this.image, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        spacing: 5,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
            ),
            child: Image.asset("lib/assets/Icons/$image",height: 30,),
          ),
          Text("$title")
        ],
      ),
    );
  }
}
