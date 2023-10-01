import 'dart:convert';
import 'package:beskid_chcolate_app/models/Field.dart';
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
  static String? AULogoTelephone;
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

  //=========== PRESENTATION MAIN ==============

  //  ASSETS
  //    images
  static List<String>? PMImageButtons;

  //  TEXT
  //    titles
  static List<String>? PMTextButtonTitles;
  static String? PMTextTitle;

  //====================================

  //=========== PRESENTATION PAGE ==============

  //  FIELDS
  static List<List<Field?>?>? PPPageFields;

  //====================================

  //=========== INFORMATION PAGE ==============

  //  IMAGES
  static String? IPMainImage;

  //  ICONS
  static String? IPMainIcon;

  //  TEXTS
  static String? IPTextTitleImage;
  static String? IPTextImage;
  static String? IPMainText;

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

    AULogoCalendar=jsonData["ABOUTUS"]["ASSETS"]["ICONS"]["AULogoCalendar"];
    AULogoClock=jsonData["ABOUTUS"]["ASSETS"]["ICONS"]["AULogoClock"];
    AULogoPin=jsonData["ABOUTUS"]["ASSETS"]["ICONS"]["AULogoPin"];
    AULogoTelephone=jsonData["ABOUTUS"]["ASSETS"]["ICONS"]["AULogoTelephone"];
    AULogoEmail=jsonData["ABOUTUS"]["ASSETS"]["ICONS"]["AULogoEmail"];
    AULogoInstagram=jsonData["ABOUTUS"]["ASSETS"]["ICONS"]["AULogoInstagram"];
    AULogoFacebook=jsonData["ABOUTUS"]["ASSETS"]["ICONS"]["AULogoFacebook"];
    AULogoYoutube=jsonData["ABOUTUS"]["ASSETS"]["ICONS"]["AULogoYoutube"];
    AULogoWebsite=jsonData["ABOUTUS"]["ASSETS"]["ICONS"]["AULogoWebsite"];
    AUTextTitle1=jsonData["ABOUTUS"]["TEXT"]["TITLES"]["AUTextTitle1"];
    AUTextTitle2=jsonData["ABOUTUS"]["TEXT"]["TITLES"]["AUTextTitle2"];
    AUTextTitle3=jsonData["ABOUTUS"]["TEXT"]["TITLES"]["AUTextTitle3"];
    AUTextRow1Calendar=jsonData["ABOUTUS"]["TEXT"]["ROWS"]["AUTextRow1Calendar"];
    AUTextRow1Clock=jsonData["ABOUTUS"]["TEXT"]["ROWS"]["AUTextRow1Clock"];
    AUTextRow1Pin=jsonData["ABOUTUS"]["TEXT"]["ROWS"]["AUTextRow1Pin"];
    AUTextRow2Clock=jsonData["ABOUTUS"]["TEXT"]["ROWS"]["AUTextRow2Clock"];
    AUTextRow2Telephone=jsonData["ABOUTUS"]["TEXT"]["ROWS"]["AUTextRow2Telephone"];
    AUTextRow2Email=jsonData["ABOUTUS"]["TEXT"]["ROWS"]["AUTextRow2Email"];
    AUTextRow2Pin=jsonData["ABOUTUS"]["TEXT"]["ROWS"]["AUTextRow2Pin"];
    AUButtonText=jsonData["ABOUTUS"]["TEXT"]["BUTTONS"]["AUButtonText"];
    AUWebsiteInstagram=jsonData["ABOUTUS"]["WEBSITE"]["AUWebsiteInstagram"];
    AUWebsiteFacebook=jsonData["ABOUTUS"]["WEBSITE"]["AUWebsiteFacebook"];
    AUWebsiteYoutube=jsonData["ABOUTUS"]["WEBSITE"]["AUWebsiteYoutube"];
    AUWebsiteWebsite=jsonData["ABOUTUS"]["WEBSITE"]["AUWebsiteWebsite"];

    PMTextTitle=jsonData["PRESENTATIONMAIN"]["TEXT"]["TITLES"]["PMTextTitle"];
    PMImageButtons=List<String>.from(jsonData["PRESENTATIONMAIN"]["ASSETS"]["IMAGES"]["PMImageButtons"]);
    PMTextButtonTitles=List<String>.from(jsonData["PRESENTATIONMAIN"]["TEXT"]["TITLES"]["PMTextButtonTitles"]);

    IPTextTitleImage=jsonData["INFORMATIONPAGE"]["TEXT"]["TITLES"]["IPTextTitleImage"];
    IPTextImage=jsonData["INFORMATIONPAGE"]["TEXT"]["CONTENT"]["IPTextImage"];
    IPMainText=jsonData["INFORMATIONPAGE"]["TEXT"]["CONTENT"]["IPMainText"];
    IPMainImage=jsonData["INFORMATIONPAGE"]["ASSETS"]["IMAGES"]["IPMainImage"];
    IPMainIcon=jsonData["INFORMATIONPAGE"]["ASSETS"]["ICONS"]["IPMainIcon"];


    List<dynamic> dynamicList = jsonData["PRESENTATIONPAGE"];
    PPPageFields = dynamicList.map((dynamic sublist) {
      if (sublist is List) {
        return sublist.map((dynamic item) {
          if (item is Map<String, dynamic>) {
            return Field(
              item["Type"],
              item["Content"],
              item["Link"]
            );
          }
          return null;
        }).toList();
      }
      return null;
    }).cast<List<Field?>?>().toList();
    if(PMImageButtons!=null && PMTextButtonTitles != null) {
      if(PMImageButtons!.length != PMTextButtonTitles!.length){
        throw Exception("JSON IS IN WRONG FORMAT ! Check PRESENTATION MAIN section");
      }
    }
  }
}