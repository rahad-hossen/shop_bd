import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search",
            border: InputBorder.none,
            hintStyle: TextStyle(fontWeight: FontWeight.w300),
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(CupertinoIcons.search),
            prefixIconColor: Colors.grey,
            suffixIcon: Icon(Icons.filter_list),
          suffixIconColor: Colors.grey
        ),
      ),
    );
  }
}
