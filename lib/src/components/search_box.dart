import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
    this.onChanged,
  }) : super(key: key);

  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4, // 5 top and bottom
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        textCapitalization: TextCapitalization.words,
        onChanged: onChanged,
        style: TextStyle(color: Colors.deepPurple),
        cursorColor: Colors.deepPurple,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          //icon: Icon(CupertinoIcons.search, color: Colors.deepPurple,),
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.deepPurple),
          prefixIcon: Icon(CupertinoIcons.search, color: Colors.deepPurple,),
        ),
      ),
    );
  }
}
