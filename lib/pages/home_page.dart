import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about_us_page.dart';

class HomePage extends StatelessWidget {
  final double fontsize = 23.0;
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/home_background_image.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.asset('assets/icons/logo2.png'),

                SizedBox(height: 50.0), // Odstęp między logo a przyciskami

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

                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: Size(210.0, 55.0),
                  ),
                  child: Text(
                    'O nas',
                    style: TextStyle(
                        fontSize: fontsize,
                        color: Colors.white
                    ),

                  ),
                ),
                SizedBox(height: 15.0), // Odstęp między przyciskami
                ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.white, width: 2.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: Size(210.0, 55.0),
                  ),
                  child: Text(
                    'Informacje',
                    style: TextStyle(
                        fontSize: fontsize,
                        color: Colors.white
                  ),),
                ),
                SizedBox(height: 15.0),
                ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.white, width: 2.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: Size(210.0, 55.0),
                  ),
                  child: Text(
                      'Zwiedzanie',
                      style: TextStyle(
                          fontSize: fontsize,
                          color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                ElevatedButton(
                  onPressed: () {
                    _launchWebsite();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.white, width: 2.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: Size(210.0, 55.0),
                  ),
                  child: Text(
                      'Oceń aplikacje',
                      style: TextStyle(
                         fontSize: fontsize,
                         color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  _launchWebsite() async {
    final Uri url = Uri.parse('https://beskidchocolate.pl');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
