import 'package:beskid_chcolate_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

          // Zdjęcie na górze (1/3 ekranu) z tekstem
          Container(
            height: MediaQuery.of(context).size.height / 3,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/home_background_image.jpg', // Zmień na ścieżkę do swojego obrazu
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                  top: 30, // Położenie od góry
                  left: 10, // Położenie od lewej
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0,bottom: 10.0), // Dodaj odstęp z lewej strony
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start, // Wyśrodkuj do lewej krawędzi
                      children: <Widget>[
                        Text(
                          'Beskid Chocolate',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lato'
                          ),
                        ),
                        Text(
                          'rzemieślnicza manufaktura czekolady',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Przycisk strzałki w lewym górnym rogu

          // Białe tło z tekstem
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              'Twój tekst na białym tle rzemieślnicza manufaktura czekolady Twój tekst na białym '
                  'tle rzemieślnicza manufaktura czekolady Twój tekst na białym tle rzemieślnicza manufaktura czekolady',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}