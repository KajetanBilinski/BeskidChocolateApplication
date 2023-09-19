import 'package:beskid_chcolate_app/pages/home_page.dart';
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
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: GlobalVariables.spaceBackIconHeightAboutUs,
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
                                RowNoteCreate(
                                    'assets/icons/about_us_page/kalendarz.png',
                                    '07.09 - 08.09 Sobota - Niedziela',
                                    true
                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                RowNoteCreate(
                                    'assets/icons/about_us_page/zegar.png',
                                    '10:00 - 18:00',
                                    true

                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                RowNoteCreate(
                                    'assets/icons/about_us_page/pinezka.png',
                                    'Manufaktura Beskid Chocolate\nHala Widowiskowo Sportowa',
                                    true
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
                                RowNoteCreate(
                                    'assets/icons/about_us_page/zegar.png',
                                    '8:00 - 16:00 PN - PT\n10:00 - 14:00 SOB',
                                    false
                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                RowNoteCreate(
                                    'assets/icons/about_us_page/telefon.png',
                                    '+ 48 123 456 789',
                                    false
                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                RowNoteCreate(
                                    'assets/icons/about_us_page/poczta.png',
                                    'biuro@beskidchocolate.pl',
                                    false
                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                RowNoteCreate(
                                    'assets/icons/about_us_page/pinezka.png',
                                    'ul. 3 Maja 28, Węgierska Górka 34-300',
                                    false
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

  Widget RowNoteCreate(
        String iconPath,
        String text,
        bool width
      )
  {
    return Row(
      children: [
        SizedBox(width: width ? GlobalVariables.spaceIconTextAboutUs : 0),
        Container(
          width: GlobalVariables.iconSizeAboutUs,
          height: GlobalVariables.iconSizeAboutUs,
          child: Image.asset(
            iconPath,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(width: GlobalVariables.spaceIconTextAboutUs),
        Text(
          text,
          style: TextStyle(
              fontSize:
              GlobalVariables.fontSizeTextAboutUs,
              fontFamily: 'Lato'),
        ),
      ],
    );
  }

  _launchWebsite(String website) async {
    final Uri url = Uri.parse(website);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}

