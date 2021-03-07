
import 'package:flutter/material.dart';
import 'package:netflix_clone/theme/color.dart';

const String percentageMatch = "84% match";
const String year = "2008";
const String age = "15";
const String time = "1h 34m";
const String description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

const String directorName = "Alex Pina";
const String directorImage = "https://images.unsplash.com/photo-1559548331-f9cb98001426?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjh8fG1hbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";
const String directorDescription = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

const List castAndCrews = [
  {
    "name": "Ayo Ogunseinde",
    "imageUrl": "https://images.unsplash.com/photo-1606930531655-679321a636a4?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
  },
  {
    "name": "Valerie Elash",
    "imageUrl": "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=934&q=80"
  },
  {
    "name": "Jurica Koletic",
    "imageUrl": "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=934&q=80"
  },
  {
    "name": "Courtney Cook",
    "imageUrl": "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
  },
  {
    "name": "Alexandru",
    "imageUrl": "https://images.unsplash.com/photo-1544717305-2782549b5136?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=934&q=80"
  },
];

const List menuBars = [
  {
    "name": "Share",
    "icon": Icon(Icons.ios_share, color: lightGrey, size: 16,),
  },
  {
    "name": "Rate",
    "icon": Icon(Icons.thumb_up, color: lightGrey, size: 16,),
  },
  {
    "name": "Play",
    "icon": Icon(Icons.play_arrow, color: lightGrey, size: 18,),
  },
  {
    "name": "Download",
    "icon": Icon(Icons.download_sharp, color: lightGrey, size: 16,),
  },
];