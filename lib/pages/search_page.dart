import 'package:flutter/material.dart';
import 'package:netflix_clone/theme/color.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Center(child: Text("Search Page", style: TextStyle(color: white),),),
    );
  }
}