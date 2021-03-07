import 'package:flutter/material.dart';
import 'package:netflix_clone/theme/color.dart';

class DownloadPage extends StatefulWidget {
  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Center(child: Text("Download Page", style: TextStyle(color: white),),),
    );
  }
}