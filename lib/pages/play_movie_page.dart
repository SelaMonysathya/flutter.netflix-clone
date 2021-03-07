import 'package:flutter/material.dart';
import 'package:meedu_player/meedu_player.dart';
import 'package:netflix_clone/theme/color.dart';
import 'package:netflix_clone/util/play_movie_page_json.dart';
import 'package:wakelock/wakelock.dart';

class PlayMoviePage extends StatefulWidget {
  @override
  _PlayMoviePageState createState() => _PlayMoviePageState();
}

class _PlayMoviePageState extends State<PlayMoviePage> {
  final MeeduPlayerController _meeduPlayerController = MeeduPlayerController(
    colorTheme: red
  );

  int count = 0;
  
  @override
  void initState() {
    super.initState();
    // The following line will enable the Android and iOs wakelock
    Wakelock.enable();
    _init();
  }

  _init() async {
    // launch the player in fullscreen mode
    await this._meeduPlayerController.launchAsFullscreen(
      context, 
      dataSource: DataSource(
        type: DataSourceType.network,
        source: movieUrl
      ),
      autoplay: true,
      header: header
    );
  }

  Widget get header {
    return Container(
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back_ios, color: white,),
            onPressed: () {
              // turn back
              Navigator.of(context).popUntil((route) => count++ >= 2);
            }
          ),
          Expanded(
            child: Text(name, style: TextStyle(color: white),)
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    Wakelock.disable();
    _meeduPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MeeduVideoPlayer(
        controller: _meeduPlayerController,
      ),
    );
  }
}