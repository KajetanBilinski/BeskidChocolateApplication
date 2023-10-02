import 'package:beskid_chcolate_app/pages/presentation_main_page.dart';
import 'package:beskid_chcolate_app/utils/UtilsJson.dart';
import 'package:flutter/material.dart';

import '../models/Field.dart';
import '../utils/GlobalComponents.dart';
import '../utils/GlobalVariables.dart';
import 'package:url_launcher/url_launcher.dart';

class PresentationPage extends StatelessWidget {

  final int number;
  const PresentationPage({super.key, required this.number});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body:
                Stack(
                  children: [
                   ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          GlobalComponents.backArrow(context,PresentationMain(),true,false),
                          const SizedBox(height: 25),
                          for(Field? f in UtilsJson.PPPageFields![number]!)
                            Column(
                              children: [
                                if(f!.Type == 'text')
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Text(
                                      f.Content,
                                      style: const TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 13,
                                      ),
                                    ),
                                  )
                                else if(f.Type == 'image')
                                  Image.asset(
                                      f.Content,
                                      fit: BoxFit.cover
                                  )
                                else if(f.Type == 'title')
                                    Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                        child: Text(
                                            f.Content,
                                            style: const TextStyle(
                                                fontFamily: 'Lato',
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                            )
                                        )
                                    )

                                  else if(f.Type == 'video')
                                      InkWell(
                                        onTap: () {
                                          _launchWebsite(f.Link.toString());
                                        },
                                        child:
                                        Image.asset(
                                            f.Content,
                                            fit: BoxFit.cover
                                        ),
                                      ),
                                const SizedBox(height: 10)
                              ],

                            ),
                          const SizedBox(height: 40)


                        ]
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Colors.white,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            if(number!=0)
                            InkWell(
                              onTap: () {
                                int nextPage = number;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PresentationPage(number: --nextPage))
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                child: Image.asset(
                                  "assets/icons/presentation_page/leftArrow.png",
                                ),
                              ),
                            )
                            else
                              SizedBox(width: 30),
                            if(number!=GlobalVariables.maxPages-1)
                            InkWell(
                              onTap: () {
                                int nextPage = number;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PresentationPage(number: ++nextPage))
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                child: Image.asset(
                                  "assets/icons/presentation_page/rightArrow.png",
                                ),
                              ),
                            )
                            else
                              SizedBox(width: 30),

                          ],
                        )
                        ),
                      ),
                  ],
                )

        )

    );

  }
  _launchWebsite(String website) async {
    final Uri url = Uri.parse(website);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

}