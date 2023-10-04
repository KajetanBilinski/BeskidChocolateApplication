
import 'package:beskid_chcolate_app/pages/presentation_page.dart';
import 'package:beskid_chcolate_app/utils/UtilsJson.dart';
import 'package:flutter/material.dart';

import '../utils/GlobalComponents.dart';
import '../utils/GlobalVariables.dart';
import 'home_page.dart';

class PresentationMain extends StatelessWidget {
  const PresentationMain({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child:
                ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    GlobalComponents.backArrow(context,HomePage(),true,false),
                    const SizedBox(height: 25),
                    Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children:
                          [
                            SizedBox(
                                width: GlobalVariables.spaceBackIconWidthAboutUs),
                            Text(
                              'Zwiedzanie',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: GlobalVariables.presentationTitleTextSize
                              ),
                            )
                          ],
                        ),

                      ],
                    ),


                    Column(
                        children:
                        [
                          SizedBox(height: GlobalVariables.presentationSpaceTitle),
                          Container(
                              alignment: Alignment.center,
                              width: GlobalVariables.presentationButtonWidth,
                              child:
                              createFlexColumn(context)
                          )

                        ]
                    )
                  ],
                )

            )
        )
    );

  }
  Widget createFlexColumn(BuildContext context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (int i = 1; i < UtilsJson.PMTextButtonTitles!.length+1; i++)
          Column(
              children:[
                createInkWell(
                    UtilsJson.PMImageButtons![i-1],
                    (i<10?'0$i':'$i'),
                    UtilsJson.PMTextButtonTitles![i-1],
                    context
                ),
                SizedBox(height: GlobalVariables.presentationSpaceButton)
              ]
          ),
      ],
    );
  }

  Widget createInkWell
      (
      String imagePath,
      String number,
      String text,
      BuildContext context
      )
  {
    String t = text.toUpperCase();
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PresentationPage(number: int.parse(number)-1)),
        );
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              imagePath,
              width: GlobalVariables.presentationButtonWidth,
              height: GlobalVariables.presentationButtonHeight,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: GlobalVariables.presentationButtonWidth,
            height: GlobalVariables.presentationButtonHeight,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15, right: 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$number',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: GlobalVariables.presentationNumberTextSize,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato',
                    ),
                  ),
                  Text(
                    t,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: GlobalVariables.presentationButtonTextSize,
                      fontFamily: 'Lato',
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}