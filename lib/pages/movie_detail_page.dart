import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:netflix_clone/pages/play_movie_page.dart';
import 'package:netflix_clone/theme/color.dart';
import 'package:netflix_clone/util/home_page_json.dart';
import 'package:netflix_clone/util/moive_detail_page_json.dart';

class MovieDetailPage extends StatefulWidget {
  @override
  _MovieDetailPageState createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: getBody(size),
    );
  }

  Widget getBody(size) {
    return Column(
      children: [
        Container(
          height: size.height * 0.42,
          width: size.width,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  ),
                  image: DecorationImage(
                    image: NetworkImage(sliders[0]),
                    fit: BoxFit.cover
                  )
                ),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: white),
                        onPressed: () {
                          Navigator.pop(context);
                        }
                      ),
                      IconButton(
                        icon: Icon(LineIcons.heart, color: white),
                        onPressed: () {}
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: 58,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: lightBlack
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(menuBars.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => PlayMoviePage()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(width: 1, color: red)
                                  ),
                                  child: Center(child: menuBars[index]['icon'],),
                                ),
                                SizedBox(height: 5),
                                Text(menuBars[index]['name'], style: TextStyle(color: lightGrey, fontSize: 11),)
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(percentageMatch, style: TextStyle(color: green, fontWeight: FontWeight.bold),),
                          SizedBox(width: 10),
                          Text(year, style: TextStyle(color: lightGrey),),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: lightGrey,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 3),
                              child: Text(age, style: TextStyle(fontSize: 13),),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(time, style: TextStyle(color: lightGrey),)
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        description, 
                        maxLines: 3, 
                        overflow: TextOverflow.ellipsis, 
                        style: TextStyle(color: white),
                      ),
                      SizedBox(height: 10),
                      Divider(color: white),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cast & Crew",
                            style: TextStyle(
                              color: white, 
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                            )
                          ),
                          Text(
                            "See All",
                            style: TextStyle(color: lightRed, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(castAndCrews.length, (index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                          left: index == 0 ? 15 : 10,
                          right: index == (castAndCrews.length - 1) ? 15 : 0,
                          bottom: 20
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: 130,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: lightGrey.withOpacity(0.2),
                                    blurRadius: 7,
                                    offset: Offset(0, 3)
                                  )
                                ],
                                image: DecorationImage(
                                  image: NetworkImage(castAndCrews[index]['imageUrl']),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 2,
                              child: Center(
                                child: Text(
                                  castAndCrews[index]['name'], 
                                  style: TextStyle(
                                    color: lightGrey
                                  ),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Divider(color: white,),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            height: 130,
                            width: (size.width - 20) * 0.35,
                            child: Stack(
                              children: [
                                Container(
                                  width: (size.width - 70) * 0.35,
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
                                      image: NetworkImage(directorImage),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 2,
                                  child: Center(child: Text(directorName, style: TextStyle(color: lightGrey),),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 130,
                            width: (size.width - 20) * 0.65,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Director", 
                                  style: TextStyle(color: grey, fontSize: 20),
                                ),
                                Flexible(
                                  child: Text(
                                    directorDescription,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: white, fontSize: 12),
                                  )
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(netflixOriginals.length, (index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: index == 0 ? 15 : 10,
                          right: index == (netflixOriginals.length - 1) ? 15 : 0
                        ),
                        child: Container(
                          height: 180,
                          width: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(netflixOriginals[index]),
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ],
    );
  }
}