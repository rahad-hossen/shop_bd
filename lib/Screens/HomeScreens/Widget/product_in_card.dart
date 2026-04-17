import 'package:flutter/material.dart';

class ProductInCard extends StatelessWidget {

  final String image;
  final String title;
  final int amount;

  const ProductInCard({super.key, required this.image, required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Flexible(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("lib/assets/Images/$image", fit: BoxFit.cover,width: double.infinity,),
              )
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              spacing: 5,
              children: [
                Text("$title",maxLines: 2,overflow: TextOverflow.ellipsis,),
                Text("BDT. $amount", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),)
              ],
            ),
          )

        ],
      ) ,
    );
  }
}
