import 'package:beskid_chcolate_app/pages/home_page.dart';
import 'package:beskid_chcolate_app/utils/GlobalVariables.dart';
import 'package:beskid_chcolate_app/utils/UtilsJson.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  UtilsJson.readJsonData();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    initializeGlobalValues(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beskid Chocolate App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage()
    );
  }
}

void initializeGlobalValues(BuildContext context)
{
  GlobalVariables.maxPages = UtilsJson.PPPageFields!.length;
  GlobalVariables.backIconSize = MediaQuery.of(context).size.height * 0.05;

  GlobalVariables.fontSizeButtonHomePage = MediaQuery.of(context).size.height * 0.03;
  GlobalVariables.buttonHeightHomePage = MediaQuery.of(context).size.height * 0.067;
  GlobalVariables.buttonWidthHomePage = MediaQuery.of(context).size.width * 0.55;
  GlobalVariables.spaceButtonsHomePage = MediaQuery.of(context).size.height * 0.06;
  GlobalVariables.spaceIconHomePage = MediaQuery.of(context).size.height * 0.1;

  GlobalVariables.fontSizeTitleAboutUs  = MediaQuery.of(context).size.height* 0.027;
  GlobalVariables.fontSizeTextAboutUs  = MediaQuery.of(context).size.height * 0.022;
  GlobalVariables.fontSizeButtonAboutUs  = MediaQuery.of(context).size.height * 0.021;
  GlobalVariables.buttonWidthAboutUs  = MediaQuery.of(context).size.width * 0.4;
  GlobalVariables.buttonHeightAboutUs  = MediaQuery.of(context).size.height * 0.045;
  GlobalVariables.iconSizeAboutUs  = MediaQuery.of(context).size.width * 0.06;
  GlobalVariables.icon2SizeAboutUs  = MediaQuery.of(context).size.width * 0.11;
  GlobalVariables.noteWidthAboutUs  = MediaQuery.of(context).size.width * 0.95;
  GlobalVariables.noteHeightAboutUs  = MediaQuery.of(context).size.height * 0.35;
  GlobalVariables.spaceTitleTextAboutUs  = MediaQuery.of(context).size.height * 0.02;
  GlobalVariables.spaceTextAboutUs  = MediaQuery.of(context).size.height * 0.02;
  GlobalVariables.spaceIconTextAboutUs  = MediaQuery.of(context).size.width * 0.04;
  GlobalVariables.spaceNoteHeightAboutUs  = MediaQuery.of(context).size.height * 0.125;
  GlobalVariables.spaceNoteWidthAboutUs  = MediaQuery.of(context).size.width * 0.07;
  GlobalVariables.spaceRowNoteAboutUs  = MediaQuery.of(context).size.height * 0.1;
  GlobalVariables.spaceButtonAboutUs  = MediaQuery.of(context).size.height * 0.025;
  GlobalVariables.spaceText2AboutUs  = MediaQuery.of(context).size.height * 0.025;
  GlobalVariables.spaceNote2HeightAboutUs  = MediaQuery.of(context).size.height * 0.05;
  GlobalVariables.spaceIconIconAboutUs  = MediaQuery.of(context).size.width * 0.1;
  GlobalVariables.spaceBackIconHeightAboutUs  = MediaQuery.of(context).size.height * 0.07;
  GlobalVariables.spaceBackIconWidthAboutUs  = MediaQuery.of(context).size.width * 0.04;

  GlobalVariables.presentationButtonWidth  = MediaQuery.of(context).size.width * 0.9;
  GlobalVariables.presentationButtonHeight  = MediaQuery.of(context).size.height * 0.22;
  GlobalVariables.presentationSpaceButton  = MediaQuery.of(context).size.height * 0.015;
  GlobalVariables.presentationSpaceTitle  = MediaQuery.of(context).size.height * 0.04;
  GlobalVariables.presentationButtonTextSize  = MediaQuery.of(context).size.height * 0.025;
  GlobalVariables.presentationNumberTextSize  = MediaQuery.of(context).size.height * 0.04;
  GlobalVariables.presentationTitleTextSize  = MediaQuery.of(context).size.height * 0.04;

  GlobalVariables.presentationPageSpaceComponents  = MediaQuery.of(context).size.height * 0.03;
  GlobalVariables.presentationPageTextSize  = MediaQuery.of(context).size.height * 0.026;
  GlobalVariables.presentationPageTitleSize  = MediaQuery.of(context).size.height * 0.035;
  GlobalVariables.presentationPageBottomBarSize  = MediaQuery.of(context).size.height * 0.05;
  GlobalVariables.presentationPageSpaceArrowBack  = MediaQuery.of(context).size.height * 0.03;

  GlobalVariables.informationImageWidth  = MediaQuery.of(context).size.width;
  GlobalVariables.informationImageHeight  = MediaQuery.of(context).size.height*0.4;
  GlobalVariables.informationSpaceTextLeft  = MediaQuery.of(context).size.width*0.07;
  GlobalVariables.informationSpaceTextDown  = MediaQuery.of(context).size.height*0.03;
  GlobalVariables.informationImageTextSize  = MediaQuery.of(context).size.height*0.02;
  GlobalVariables.informationImageTitleSize  = MediaQuery.of(context).size.height*0.035;
  GlobalVariables.informationContentTextSize  = MediaQuery.of(context).size.height*0.04;
  GlobalVariables.informationSpaceImage  = MediaQuery.of(context).size.height*0.015;
  GlobalVariables.informationSpaceIcon  = MediaQuery.of(context).size.height*0.04;
  GlobalVariables.informationSpaceRow  = MediaQuery.of(context).size.height*0.04;
  GlobalVariables.informationIconWidth  = MediaQuery.of(context).size.height*0.35;
  GlobalVariables.informationIconHeight  = MediaQuery.of(context).size.height*0.5;
}