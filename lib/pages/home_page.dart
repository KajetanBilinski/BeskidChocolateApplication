import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
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
                // Logo firmy
                Image.asset('assets/icons/logo2.png'),

                SizedBox(height: 50.0), // Odstęp między logo a przyciskami

                // Przyciski
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
                  child: Text('O nas'),
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
                  child: Text('Informacje'),
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
                  child: Text('Zwiedzanie'),
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
                  child: Text('Oceń aplikacje'),
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
