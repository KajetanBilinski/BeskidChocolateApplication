
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
                              height: 1,
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
                                    child: const Icon(Icons.arrow_back)
                                )],
                            )

                          ],
                        ),
                        SizedBox(height: 80),
                        const Text(
                          'Zwiedzanie',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 30
                          ),
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
                                      InkWell(
                                        onTap: () {

                                        },
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20.0),
                                            child:Image.asset(

                                              'assets/images/presentation_main_page/sample.png',
                                              width: 700,
                                              height: 200,
                                              fit: BoxFit.cover,
                                            )
                                        ),
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
}