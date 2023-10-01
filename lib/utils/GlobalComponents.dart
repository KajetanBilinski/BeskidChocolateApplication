import 'package:beskid_chcolate_app/pages/presentation_main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import 'GlobalVariables.dart';

class GlobalComponents
{
  static Widget backArrow(BuildContext context, Widget page, bool needSpace,bool white)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: needSpace?GlobalVariables.spaceBackIconHeightAboutUs:0,
        ),
        Row(
          children: [
            SizedBox(
                width: GlobalVariables.spaceBackIconWidthAboutUs),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => page),
                  );
                },
                child: Icon(
                    Icons.arrow_back,
                    size: GlobalVariables.backIconSize,
                  color: white?Colors.white:Colors.black,
                )
            )],
        )

      ],
    );
  }
}