import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class UtilsJson {
  static UtilsJson? _instance;

  //=========== HOME PAGE ==============

  //  ASSETS
  //    background
  static List<String>? HPBackgroundPhotos;
  //    logos
  static String? HPLogoPath;

  //  TEXT
  //    buttons
  static String? HPButtonText1;
  static String? HPButtonText2;
  static String? HPButtonText3;
  static String? HPButtonText4;

  //  WEBSITE
  //    websites
  static String? HPWebsiteWebsite;

  //====================================


  //=========== ABOUT US ==============

  //  ASSETS
  //    icons
  static String? AULogoCalendar;
  static String? AULogoClock;
  static String? AULogoPin;
  static String? AULogoEmail;
  static String? AULogoInstagram;
  static String? AULogoFacebook;
  static String? AULogoYoutube;
  static String? AULogoWebsite;

  //  TEXT
  //    titles
  static String? AUTextTitle1;
  static String? AUTextTitle2;
  static String? AUTextTitle3;
  //    rows
  static String? AUTextRow1Calendar;
  static String? AUTextRow1Clock;
  static String? AUTextRow1Pin;
  static String? AUTextRow2Clock;
  static String? AUTextRow2Telephone;
  static String? AUTextRow2Email;
  static String? AUTextRow2Pin;
  //    buttons
  static String? AUButtonText;
  //  WEBSITE
  //    websites
  static String? AUWebsiteInstagram;
  static String? AUWebsiteFacebook;
  static String? AUWebsiteYoutube;
  static String? AUWebsiteWebsite;

  //====================================


  UtilsJson._();

  static UtilsJson getInstance() {
    _instance ??= UtilsJson._();
    return _instance!;
  }

  static Future<void> readJsonData() async {
    final String jsonString = await rootBundle.loadString('assets/text/text.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);
    HPBackgroundPhotos=List<String>.from(jsonData["HOMEPAGE"]["ASSETS"]["BACKGROUND"]["HPBackgroundPhotos"]);
    HPLogoPath=jsonData["HOMEPAGE"]["ASSETS"]["LOGOS"]["HPLogoPath"];
    HPButtonText1=jsonData["HOMEPAGE"]["TEXT"]["BUTTONS"]["HPButtonText1"];
    HPButtonText2=jsonData["HOMEPAGE"]["TEXT"]["BUTTONS"]["HPButtonText2"];
    HPButtonText3=jsonData["HOMEPAGE"]["TEXT"]["BUTTONS"]["HPButtonText3"];
    HPButtonText4=jsonData["HOMEPAGE"]["TEXT"]["BUTTONS"]["HPButtonText4"];
    HPWebsiteWebsite=jsonData["HOMEPAGE"]["WEBSITE"]["HPWebsiteWebsite"];
  }
}