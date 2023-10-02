import 'dart:async';
import 'package:beskid_chcolate_app/pages/presentation_main_page.dart';
import 'package:beskid_chcolate_app/utils/UtilsJson.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about_us_page.dart';
import '../utils/GlobalVariables.dart';
import 'information_page.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  final List<String> imagePaths = UtilsJson.HPBackgroundPhotos!;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
    Timer.periodic(const Duration(seconds: 2), (timer) {
      if (currentPage < imagePaths.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      _pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 1500),
        curve: Curves.fastOutSlowIn,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            IgnorePointer(
              ignoring: true,
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
                aspectRatio: 3/1,
                child: Image.asset(
                   UtilsJson.HPLogoPath!
                ),
              ),
              SizedBox(height: GlobalVariables.spaceIconHomePage), // Odstęp między logo a przyciskami
              createElevatedButton(
                  UtilsJson.HPButtonText1!, () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const InformationPage()));
              }
              ),
              SizedBox(height: GlobalVariables.spaceButtonsHomePage),// Odstęp między przyciskami
              createElevatedButton(
                  UtilsJson.HPButtonText2!, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUs())
                );
              }
              ),
              SizedBox(height: GlobalVariables.spaceButtonsHomePage),
              createElevatedButton(
                  UtilsJson.HPButtonText3!, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PresentationMain()),
                    );
                  }
              ),
              SizedBox(height: GlobalVariables.spaceButtonsHomePage),
              createElevatedButton(
                  UtilsJson.HPButtonText4!, () {
                    _launchWebsite(UtilsJson.HPWebsiteWebsite!);
                  }
              )
            ],
          ),
        ),
      ],

    )));
  }
  Widget createElevatedButton
      (
          String text,
          Null Function() onpressed
      )
  {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.white, width: 2.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        minimumSize: Size(GlobalVariables.buttonWidthHomePage, GlobalVariables.buttonHeightHomePage),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: GlobalVariables.fontSizeButtonHomePage,
            color: Colors.white,
            fontFamily: 'Lato'
        ),
      ),
    );
  }

  _launchWebsite(String website) async {
    final Uri url = Uri.parse(website);
    if (!await launchUrl(url)) {
      throw Exception('Nie udało połączyć się z stroną $url');
    }
  }
}