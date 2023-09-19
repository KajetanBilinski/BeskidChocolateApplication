import 'package:beskid_chcolate_app/pages/home_page.dart';
import 'package:beskid_chcolate_app/utils/GlobalVariables.dart';
import 'package:beskid_chcolate_app/utils/UtilsJson.dart';
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
                            child: Icon(
                                Icons.arrow_back,
                                size: GlobalVariables.backIconSize
                            )
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
                                      UtilsJson.AUTextTitle1!,
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
                                    UtilsJson.AULogoCalendar!,
                                    UtilsJson.AUTextRow1Calendar!,
                                    true
                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                RowNoteCreate(
                                    UtilsJson.AULogoClock!,
                                    UtilsJson.AUTextRow1Clock!,
                                    true

                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                RowNoteCreate(
                                    UtilsJson.AULogoPin!,
                                    UtilsJson.AUTextRow1Pin!,
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
                                  UtilsJson.AUButtonText!,
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
                                          UtilsJson.AUTextTitle2!,
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
                                    UtilsJson.AULogoClock!,
                                    UtilsJson.AUTextRow2Clock!,
                                    false
                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                RowNoteCreate(
                                    UtilsJson.AULogoTelephone!,
                                    UtilsJson.AUTextRow2Telephone!,
                                    false
                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                RowNoteCreate(
                                    UtilsJson.AULogoEmail!,
                                    UtilsJson.AUTextRow2Email!,
                                    false
                                ),
                                SizedBox(height: GlobalVariables.spaceTextAboutUs),
                                RowNoteCreate(
                                    UtilsJson.AULogoPin!,
                                    UtilsJson.AUTextRow2Pin!,
                                    false
                                ),

                              ]
                         )
                      ),
                      SizedBox(height: GlobalVariables.spaceNote2HeightAboutUs),
                      Text(UtilsJson.AUTextTitle3!,
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
                              _launchWebsite(UtilsJson.AUWebsiteInstagram!);
                            },
                            child: Image.asset(
                              UtilsJson.AULogoInstagram!,
                              width: GlobalVariables.icon2SizeAboutUs,
                              height: GlobalVariables.icon2SizeAboutUs,
                            ),
                          ),
                          SizedBox(width: GlobalVariables.spaceIconIconAboutUs),
                          InkWell(
                            onTap: () {
                              _launchWebsite(UtilsJson.AUWebsiteFacebook!);
                            },
                            child: Image.asset(
                              UtilsJson.AULogoFacebook!,
                              width: GlobalVariables.icon2SizeAboutUs,
                              height: GlobalVariables.icon2SizeAboutUs,
                            ),
                          ),
                          SizedBox(width: GlobalVariables.spaceIconIconAboutUs),
                          InkWell(
                            onTap: () {
                              _launchWebsite(UtilsJson.AUWebsiteYoutube!);
                            },
                            child: Image.asset(
                              UtilsJson.AULogoYoutube!,
                              width: GlobalVariables.icon2SizeAboutUs,
                              height: GlobalVariables.icon2SizeAboutUs,
                            ),
                          ),
                          SizedBox(width: GlobalVariables.spaceIconIconAboutUs),
                          InkWell(
                            onTap: () {
                              _launchWebsite(UtilsJson.AUWebsiteWebsite!);
                            },
                            child: Image.asset(
                              UtilsJson.AULogoWebsite!,
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

