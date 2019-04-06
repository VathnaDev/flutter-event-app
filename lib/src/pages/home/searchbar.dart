import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 16.0,
      borderRadius: BorderRadius.circular(32),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Type event, categories, city....",
          border: InputBorder.none,
          prefixIcon: IconButton(
            color: Colors.grey,
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 32,
          ),
          suffixIcon: IconButton(
            color: Colors.grey,
            onPressed: () {},
            icon: Icon(Icons.tune),
            iconSize: 32,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 16,
          ),
        ),
      ),
    );
  }
}
