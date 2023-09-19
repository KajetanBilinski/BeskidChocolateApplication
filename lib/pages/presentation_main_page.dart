
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
                                    child: const Icon(Icons.arrow_back,
                                    size: 30,)
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
                                const Text(
                                  'Zwiedzanie',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Lato',
                                      fontSize: 30
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),


                        Column(
                            children:
                            [
                              SizedBox(height: 20),
                              Container(
                                alignment: Alignment.center,
                                width: 350,
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
                                      SizedBox(height: 15),
                                      createInkWell(
                                          'assets/images/presentation_main_page/sample.png',
                                          '02',
                                          'CZY CZEKOLADA TO SAŁATKA?'
                                      ),
                                      SizedBox(height: 15),
                                      createInkWell(
                                          'assets/images/presentation_main_page/sample.png',
                                          '02',
                                          'CZY CZEKOLADA TO SAŁATKA?'
                                      ),
                                      SizedBox(height: 15),
                                      createInkWell(
                                          'assets/images/presentation_main_page/sample.png',
                                          '02',
                                          'CZY CZEKOLADA TO SAŁATKA?'
                                      ),
                                      SizedBox(height: 15),
                                      createInkWell(
                                          'assets/images/presentation_main_page/sample.png',
                                          '02',
                                          'CZY CZEKOLADA TO SAŁATKA?'
                                      )
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
              width: 800,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 10.0, // Odstęp od lewej strony
            bottom: 10.0, // Odstęp od dolnej strony
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: number+'\n',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontFamily: 'Lato'

                    ),
                  ),
                  TextSpan(
                    text: text.toUpperCase(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
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