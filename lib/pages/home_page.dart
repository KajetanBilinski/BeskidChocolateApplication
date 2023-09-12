import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about_us_page.dart';
import '../utils/GlobalVariables.dart';

class HomePage extends StatefulWidget {

  //GlobalVariables. = MediaQuery.of(context).size.width * 0.05;

  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final double fontsize = 23.0;
  final PageController _pageController = PageController();
  final List<String> imagePaths = [
    'assets/images/home_page/background_1.jpg',
    'assets/images/home_page/background_2.png'
  ];
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    // Set initial page and start a timer to automatically advance the page
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });

    // Start a timer to automatically advance the page
    Timer.periodic(Duration(seconds: 5), (timer) {
      if (currentPage < imagePaths.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      _pageController.animateToPage(
        currentPage,
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  void initializeGlobalValues()
  {
    GlobalVariables.fontSizeButtonHomePage = MediaQuery.of(context).size.height * 0.06;
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




  }
  @override
  Widget build(BuildContext context) {
    initializeGlobalValues();
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            IgnorePointer(
              ignoring: true, // Set ignoring to true to block user interaction
              child: PageView.builder(
                controller: _pageController,
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  );
                },
              ),
            ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              AspectRatio(
                aspectRatio: 3/1, // Use the calculated aspect ratio
                child: Image.asset(
                  'assets/icons/home_page/logo.png' // Replace with your image path
                   // Adjust the fit property as needed
                ),
              ),

              SizedBox(height: GlobalVariables.spaceIconHomePage), // Odstęp między logo a przyciskami

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutUs()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  side: BorderSide(color: Colors.white, width: 2.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize: Size(GlobalVariables.buttonWidthHomePage, GlobalVariables.buttonHeightHomePage),
                ),
                child: Text(
                  'O nas',
                  style: TextStyle(
                      fontSize: GlobalVariables.fontSizeButtonHomePage,
                      color: Colors.white,
                      fontFamily: 'Lato'
                  ),

                ),
              ),
              SizedBox(height: GlobalVariables.spaceButtonsHomePage),// Odstęp między przyciskami
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  side: BorderSide(color: Colors.white, width: 2.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize: Size(GlobalVariables.buttonWidthHomePage, GlobalVariables.buttonHeightHomePage),
                ),
                child: Text(
                  'Informacje',
                  style: TextStyle(
                      fontSize: GlobalVariables.fontSizeButtonHomePage,
                      color: Colors.white,
                      fontFamily: 'Lato'
                  ),),
              ),
              SizedBox(height: GlobalVariables.spaceButtonsHomePage),
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  side: BorderSide(color: Colors.white, width: 2.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize: Size(GlobalVariables.buttonWidthHomePage, GlobalVariables.buttonHeightHomePage),
                ),
                child: Text(
                  'Zwiedzanie',
                  style: TextStyle(
                      fontSize: GlobalVariables.fontSizeButtonHomePage,
                      color: Colors.white,
                      fontFamily: 'Lato'
                  ),
                ),
              ),
              SizedBox(height: GlobalVariables.spaceButtonsHomePage),
              ElevatedButton(
                onPressed: () {
                  _launchWebsite('https://beskidchocolate.pl');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  side: BorderSide(color: Colors.white, width: 2.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize: Size(GlobalVariables.buttonWidthHomePage, GlobalVariables.buttonHeightHomePage),
                ),
                child: Text(
                  'Oceń aplikacje',
                  style: TextStyle(
                      fontSize: GlobalVariables.fontSizeButtonHomePage,
                      color: Colors.white,
                      fontFamily: 'Lato'
                  ),
                ),
              ),
            ],
          ),
        ),
      ],

    )));
  }

  _launchWebsite(String website) async {
    final Uri url = Uri.parse(website);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}