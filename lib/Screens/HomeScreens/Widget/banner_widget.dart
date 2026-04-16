import 'package:flutter/material.dart';

class banner extends StatelessWidget {
  final String image;
  const banner(this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage("$image"),
              fit: BoxFit.cover
          )
      ),
    );
  }
}
