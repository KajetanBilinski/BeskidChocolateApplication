import 'package:beskid_chcolate_app/utils/GlobalVariables.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class AboutUs extends StatelessWidget {


  const AboutUs({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Stack(
                children: [

                  Container(
                    color: Colors.white, // Tło będzie białe
                  ),
                  Column(
                    children : [
                      Container(
                        width: GlobalVariables.noteWidthAboutUs,
                        height: GlobalVariables.noteHeightAboutUs,
                        margin: EdgeInsets.only(top: GlobalVariables.spaceNoteHeightAboutUs,left: GlobalVariables.spaceNoteWidthAboutUs,right: GlobalVariables.spaceNoteWidthAboutUs,
                            bottom: GlobalVariables.spaceNoteHeightAboutUs/2),

                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 227, 209, 1.0),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                children: [
                                  SizedBox(width: GlobalVariables.spaceIconTextAboutUs),
                                  Text(
                                      'Beskidzki Festiwal Czekolady',
                                      style: TextStyle(
                                        fontSize: GlobalVariables.fontSizeTitleAboutUs,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w500,
                                      )
                                  )]
                            ),
                            SizedBox(height: GlobalVariables.spaceTitleTextAboutUs),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: GlobalVariables.spaceIconTextAboutUs),
                                    Container(
                                      width: GlobalVariables.iconSizeAboutUs,
                                      height: GlobalVariables.iconSizeAboutUs,
                                      child: Image.asset(
                                        'assets/icons/about_us_page/kalendarz.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(width: GlobalVariables.spaceIconTextAboutUs),
                                    Text(
                                      '07.09 - 08.09 Sobota - Niedziela',
                                      style: TextStyle(
                                          fontSize:
                                          GlobalVariables.fontSizeTextAboutUs,
                                          fontFamily: 'Lato'),
                                    ),
                                  ],
                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                Row(
                                  children: [
                                    SizedBox(width: GlobalVariables.spaceIconTextAboutUs),
                                    Container(
                                      width: GlobalVariables.iconSizeAboutUs,
                                      height: GlobalVariables.iconSizeAboutUs,
                                      child: Image.asset(
                                        'assets/icons/about_us_page/zegar.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                        GlobalVariables.spaceIconTextAboutUs),
                                    Text(
                                      '10:00 - 18:00',
                                      style: TextStyle(
                                          fontSize:
                                          GlobalVariables.fontSizeTextAboutUs,
                                          fontFamily: 'Lato'),
                                    ),
                                  ],
                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                Row(
                                  children: [
                                    SizedBox(width: GlobalVariables.spaceIconTextAboutUs),
                                    Container(
                                      width: GlobalVariables.iconSizeAboutUs,
                                      height: GlobalVariables.iconSizeAboutUs,
                                      child: Image.asset(
                                        'assets/icons/about_us_page/pinezka.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                        GlobalVariables.spaceIconTextAboutUs),
                                    Text(
                                      'Manufaktura Beskid Chocolate\nHala Widowiskowo Sportowa',
                                      style: TextStyle(
                                          fontSize:
                                          GlobalVariables.fontSizeTextAboutUs,
                                          fontFamily: 'Lato'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: GlobalVariables.spaceButtonAboutUs),
                            Container(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Obsługa przycisku
                                },
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(
                                        GlobalVariables.buttonWidthAboutUs,
                                        GlobalVariables.buttonHeightAboutUs),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    backgroundColor: Color.fromRGBO(238, 148, 91, 1.0)
                                ),
                                child: Text(
                                  'więcej informacji',
                                  style: TextStyle(
                                      fontSize:
                                      GlobalVariables.fontSizeButtonAboutUs),
                                ),
                              ),
                            )],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: GlobalVariables.spaceNoteWidthAboutUs
                              ),
                         child: Column(
                              children: [
                                Row(

                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                          'Manufaktura Beskid Chocolate',
                                          style: TextStyle(
                                            fontSize: GlobalVariables.fontSizeTitleAboutUs,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left
                                      )]
                                ),
                                SizedBox(height: GlobalVariables.spaceIconTextAboutUs),
                                Row(

                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: GlobalVariables.iconSizeAboutUs,
                                      height: GlobalVariables.iconSizeAboutUs,
                                      child: Image.asset(
                                        'assets/icons/about_us_page/zegar.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(width: GlobalVariables.spaceIconTextAboutUs),
                                    Text(
                                      '8:00 - 16:00 PN - PT\n10:00 - 14:00 SOB',
                                      style: TextStyle(
                                          fontSize: GlobalVariables.fontSizeTextAboutUs,
                                          fontFamily: 'Lato'),
                                    ),
                                  ],
                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                Row(

                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: GlobalVariables.iconSizeAboutUs,
                                      height: GlobalVariables.iconSizeAboutUs,
                                      child: Image.asset(
                                        'assets/icons/about_us_page/telefon.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                        width: GlobalVariables.spaceIconTextAboutUs),
                                    Text(
                                      '+ 48 123 456 789',
                                      style: TextStyle(
                                          fontSize: GlobalVariables.fontSizeTextAboutUs,
                                          fontFamily: 'Lato'),
                                    ),
                                  ],
                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: GlobalVariables.iconSizeAboutUs,
                                      height: GlobalVariables.iconSizeAboutUs,
                                      child: Image.asset(
                                        'assets/icons/about_us_page/poczta.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                        GlobalVariables.spaceIconTextAboutUs),
                                    Text(
                                      'biuro@beskidchocolate.pl',
                                      style: TextStyle(fontSize:
                                      GlobalVariables.fontSizeTextAboutUs,
                                          fontFamily: 'Lato'),
                                    ),
                                  ],
                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: GlobalVariables.iconSizeAboutUs,
                                      height: GlobalVariables.iconSizeAboutUs,
                                      child: Image.asset(
                                        'assets/icons/about_us_page/pinezka.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                        GlobalVariables.spaceIconTextAboutUs),
                                    Text(
                                      'ul. 3 Maja 28, Węgierska Górka 34-300',
                                      style: TextStyle(
                                          fontSize:
                                          GlobalVariables.fontSizeTextAboutUs,
                                          fontFamily: 'Lato'),
                                    ),
                                  ],
                                ),
                              ]
                         )
                      ),
                      SizedBox(height: GlobalVariables.spaceNote2HeightAboutUs),
                      Text('znajdź nas na:',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: GlobalVariables.fontSizeTextAboutUs,
                        fontWeight: FontWeight.bold
                      ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: GlobalVariables.spaceButtonAboutUs),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {

                            },
                            child: Image.asset(
                              'assets/icons/about_us_page/insta.png',
                              width: GlobalVariables.icon2SizeAboutUs,
                              height: GlobalVariables.icon2SizeAboutUs,
                            ),
                          ),
                          SizedBox(width: GlobalVariables.spaceIconIconAboutUs),
                          InkWell(
                            onTap: () {
                              _launchWebsite('https://beskidchocolate.pl');
                            },
                            child: Image.asset(
                              'assets/icons/about_us_page/facebook.png',
                              width: GlobalVariables.icon2SizeAboutUs,
                              height: GlobalVariables.icon2SizeAboutUs,
                            ),
                          ),
                          SizedBox(width: GlobalVariables.spaceIconIconAboutUs),
                          InkWell(
                            onTap: () {
                              _launchWebsite('https://beskidchocolate.pl');
                            },
                            child: Image.asset(
                              'assets/icons/about_us_page/yt.png',
                              width: GlobalVariables.icon2SizeAboutUs,
                              height: GlobalVariables.icon2SizeAboutUs,
                            ),
                          ),
                          SizedBox(width: GlobalVariables.spaceIconIconAboutUs),
                          InkWell(
                            onTap: () {
                              _launchWebsite('https://beskidchocolate.pl');
                            },
                            child: Image.asset(
                              'assets/icons/about_us_page/web.png',
                              width: GlobalVariables.icon2SizeAboutUs,
                              height: GlobalVariables.icon2SizeAboutUs,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ]),
          ),
        )
    );
  }
  _launchWebsite(String website) async {
    final Uri url = Uri.parse(website);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}

