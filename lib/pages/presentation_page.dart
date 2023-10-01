import 'package:beskid_chcolate_app/utils/UtilsJson.dart';
import 'package:flutter/material.dart';

import '../models/Field.dart';
import '../utils/GlobalVariables.dart';
import 'home_page.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class PresentationPage extends StatelessWidget {

  final int number;
  PresentationPage({super.key, required this.number});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child:
                ListView(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                  width: GlobalVariables.spaceBackIconWidthAboutUs),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const HomePage()),
                                    );
                                  },
                                  child: Icon(Icons.arrow_back,
                                      size: GlobalVariables.backIconSize)
                              )],
                          )

                        ],
                      ),
                      const SizedBox(height: 25),
                      for(Field? f in UtilsJson.PPPageFields![number]!)
                        Column(
                          children: [
                            if(f!.Type == 'text')
                              Text(
                                f.Content,
                                style: const TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 10
                                ),
                              )
                            else if(f.Type == 'image')
                              Image.asset(
                                f.Content,
                                fit: BoxFit.cover
                              )
                            else if(f.Type == 'title')
                              Text(
                              f.Content,
                              style: const TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                              )
                              )
                            ,const SizedBox(height: 10)
                          ],

                        ),
                      YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                      ),


                    ]
                )
            )
        )
    );
  }
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'MWnT_2EF86E', // Wstaw tutaj identyfikator wideo z YouTube
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
}