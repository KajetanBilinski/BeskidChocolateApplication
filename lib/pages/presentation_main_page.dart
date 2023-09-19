
import 'package:flutter/material.dart';

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
                      children: [
                        Column(
                          children: [
                            SizedBox(
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
                        SizedBox(height: 25),
                        Column(
                          children: [
                            SizedBox(
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
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                      createInkWell(
                                          'assets/images/presentation_main_page/sample.png',
                                          '01',
                                          'CO TO ZNACZY BEAN TO BAR?'
                                      ),
                                      SizedBox(height: GlobalVariables.presentationSpaceButton),
                                      createInkWell(
                                          'assets/images/presentation_main_page/sample.png',
                                          '02',
                                          'CZY CZEKOLADA TO SAŁATKA?'
                                      ),
                                      SizedBox(height: GlobalVariables.presentationSpaceButton),
                                      createInkWell(
                                          'assets/images/presentation_main_page/sample.png',
                                          '03',
                                          'FERMENTACJA ZIAREN KAKAO'
                                      ),
                                      SizedBox(height: GlobalVariables.presentationSpaceButton),
                                      createInkWell(
                                          'assets/images/presentation_main_page/sample.png',
                                          '04',
                                          'CZY CZEKOLADA TO SAŁATKA?'
                                      ),
                                      SizedBox(height: GlobalVariables.presentationSpaceButton),
                                      createInkWell(
                                          'assets/images/presentation_main_page/sample.png',
                                          '05',
                                          'CZY CZEKOLADA TO SAŁATKA?'
                                      ),
                                      SizedBox(height: GlobalVariables.presentationSpaceButton)
                                    ]
                                ),
                              )

                            ]
                        )
                      ],
                    )

                )
            )
        );

  }
  Widget createInkWell
      (
        String imagePath,
        String number,
        String text
      )
  {
    return InkWell(
      onTap: () {
        // Obsługa kliknięcia
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
          Positioned(
            left: 15.0, // Odstęp od lewej strony
            bottom: 15.0, // Odstęp od dolnej strony
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: number+'\n',
                    style:  TextStyle(
                      color: Colors.white,
                      fontSize: GlobalVariables.presentationNumberTextSize,
                      fontFamily: 'Lato'

                    ),
                  ),
                  TextSpan(
                    text: text.toUpperCase(),
                    style:  TextStyle(
                        color: Colors.white,
                        fontSize: GlobalVariables.presentationButtonTextSize,
                        fontFamily: 'Lato'
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}