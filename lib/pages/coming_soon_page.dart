import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:line_icons/line_icons.dart';
import 'package:netflix_clone/theme/color.dart';
import 'package:netflix_clone/util/coming_soon_page_json.dart';

class ComingSoonPage extends StatefulWidget {
  @override
  _ComingSoonPageState createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: getBody(size),
    );
  }

  Widget getBody(size) {
    return ListView(
      children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text("COMING", style: TextStyle(color: white, fontWeight: FontWeight.w500),),
              Text("SOON", style: TextStyle(color: grey),),
            ],
          ),
        ),
        Swiper(
          itemHeight: 220,
          itemWidth: size.width,
          layout: SwiperLayout.TINDER,
          autoplay: true,
          itemCount: comingSoonSliders.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(comingSoonSliders[index]),
                  fit: BoxFit.cover
                )
              ),
            );
          },
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(color: white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 3),
              Text(
                season,
                style: TextStyle(color: grey, fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Text(description, style: TextStyle(color: grey),),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("Starting: ", style: TextStyle(color: white, fontWeight: FontWeight.w500),),
                  Text(starting, style: TextStyle(color: grey),),
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Text("Creator: ", style: TextStyle(color: white, fontWeight: FontWeight.w500),),
                  Text(creators, style: TextStyle(color: grey),),
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: lightBlack,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(LineIcons.bell, color: white, size: 20,),
                      SizedBox(width: 3),
                      Text("Active", style: TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.w500,)),
                      SizedBox(width: 3),
                      Text("Notification", style: TextStyle(color: lightRed, fontSize: 16),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text("EPISODES | ", style: TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.bold),),
                  Text(name.toUpperCase(), style: TextStyle(color: grey, fontSize: 16),)
                ],
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: lightBlack
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("SEASON 1", style: TextStyle(color: white, fontWeight: FontWeight.w500),),
                      SizedBox(width: 3),
                      Icon(Icons.keyboard_arrow_down, size: 20, color: red,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(episodes.length, (index) {
              return Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: index == 0 ? 15 : 10,
                  right: index == (episodes.length - 1) ? 15 : 0,
                  bottom: 20
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: lightGrey.withOpacity(0.2),
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                        image: DecorationImage(
                          image: NetworkImage(episodes[index]['imageUrl']),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(episodes[index]['name'], style: TextStyle(color: lightGrey, fontSize: 11),),
                            Text(episodes[index]['time'], style: TextStyle(color: grey, fontSize: 9),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text("ADDITIONAL VIDEOS | ", style: TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.bold),),
              Text(name.toUpperCase(), style: TextStyle(color: grey, fontSize: 16),)
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(additionVideos.length, (index) {
              return Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: index == 0 ? 15 : 10,
                  right: index == (additionVideos.length - 1) ? 15 : 0,
                  bottom: 20
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: lightGrey.withOpacity(0.2),
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                        image: DecorationImage(
                          image: NetworkImage(additionVideos[index]['imageUrl']),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(additionVideos[index]['name'], style: TextStyle(color: lightGrey, fontSize: 11),),
                            Text(additionVideos[index]['time'], style: TextStyle(color: grey, fontSize: 9),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
        SizedBox(height: 100),
      ],
    );
  }
}