import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomLocalization {
  Map<String, dynamic>? _localizedStrings;

  Future<void> load() async {
    // Load the JSON file containing your localized strings
    final String jsonString = await rootBundle.loadString('assets/text/text.json');
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    // Store the JSON data in a map
    _localizedStrings = jsonMap;
  }

  // Define methods to access the localized strings
  String? get title => _localizedStrings?['title'];
  String? get description => _localizedStrings?['description'];
  String? get content => _localizedStrings?['content'];

  // Create a method to retrieve the localization instance
  static CustomLocalization of(BuildContext context) {
    return Localizations.of<CustomLocalization>(context, CustomLocalization)!;
  }
}