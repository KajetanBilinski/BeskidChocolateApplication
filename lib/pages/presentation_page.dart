import 'package:beskid_chcolate_app/pages/presentation_main_page.dart';
import 'package:beskid_chcolate_app/utils/UtilsJson.dart';
import 'package:flutter/material.dart';

import '../models/Field.dart';
import '../utils/GlobalComponents.dart';
import '../utils/GlobalVariables.dart';
import 'home_page.dart';
import 'package:url_launcher/url_launcher.dart';

class PresentationPage extends StatelessWidget {

  final int number;
  const PresentationPage({super.key, required this.number});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child:
                ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      GlobalComponents.backArrow(context,PresentationMain(),true,false),
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

                        )


                    ]
                )
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