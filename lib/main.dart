import 'package:beskid_chcolate_app/pages/home_page.dart';
import 'package:beskid_chcolate_app/utils/GlobalVariables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
void initializeGlobalValues(BuildContext context)
{
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
  GlobalVariables.spaceNoteHeightAboutUs  = MediaQuery.of(context).size.height * 0.11;
  GlobalVariables.spaceNoteWidthAboutUs  = MediaQuery.of(context).size.width * 0.07;
  GlobalVariables.spaceRowNoteAboutUs  = MediaQuery.of(context).size.height * 0.1;
  GlobalVariables.spaceButtonAboutUs  = MediaQuery.of(context).size.height * 0.025;
  GlobalVariables.spaceText2AboutUs  = MediaQuery.of(context).size.height * 0.025;
  GlobalVariables.spaceNote2HeightAboutUs  = MediaQuery.of(context).size.height * 0.05;
  GlobalVariables.spaceIconIconAboutUs  = MediaQuery.of(context).size.width * 0.1;
  GlobalVariables.spaceBackIconHeightAboutUs  = MediaQuery.of(context).size.height * 0.07;
  GlobalVariables.spaceBackIconWidthAboutUs  = MediaQuery.of(context).size.width * 0.04;
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