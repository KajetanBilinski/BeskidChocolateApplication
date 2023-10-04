import 'package:flutter/material.dart';

import '../utils/GlobalComponents.dart';
import '../utils/GlobalVariables.dart';
import '../utils/UtilsJson.dart';
import 'home_page.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
        ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  SizedBox(
                    width: GlobalVariables.informationImageWidth, // Ustaw szerokość na szerokość ekranu
                    height: GlobalVariables.informationImageHeight, // Ustaw wysokość na 500
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          UtilsJson.IPMainImage!,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          left: GlobalVariables.informationSpaceTextLeft,
                          bottom: GlobalVariables.informationSpaceTextDown,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                UtilsJson.IPTextTitleImage!,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: GlobalVariables.informationImageTitleSize,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Lato'
                                ),
                              ),
                              Text(
                                UtilsJson.IPTextImage!,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: GlobalVariables.informationImageTextSize,
                                    fontFamily: 'Lato'
                                ),
                              ),
                            ],
                          ),
                        ),
                        GlobalComponents.backArrow(context, HomePage(), true, true),
                      ],
                    ),
                  ),
                  SizedBox(height: GlobalVariables.informationSpaceImage),
                  Row(

                    children: [
                      SizedBox(width: GlobalVariables.informationSpaceRow),
                      Image.asset(
                        UtilsJson.IPMainIcon!,
                        width: GlobalVariables.informationIconWidth,
                      ),
                    ],
                  ),
                  Row(
                    children: [

                      Flexible(
                        child:
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: GlobalVariables.informationSpaceRow),
                            child: Text(
                              UtilsJson.IPMainText!,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: GlobalVariables.informationContentTextSize,
                                  fontFamily: 'Lato'
                              ),
                            )
                        ),
                      )
                    ],
                  )

                ]
            ),
          ],
        )

      ),
    );
  }
}
