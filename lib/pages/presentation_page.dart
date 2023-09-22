import 'package:beskid_chcolate_app/utils/UtilsJson.dart';
import 'package:flutter/material.dart';

import '../models/Field.dart';

class PresentationPage extends StatelessWidget {

  final int number;
  const PresentationPage({super.key, required this.number});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child:
                ListView(
                    children: [
                      for(Field? f in UtilsJson.PPPageFields![number]!)
                        Column(
                          children: [
                            if(f!.Type == 'text')
                              Text(
                                f.Content,
                                style: const TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 10
                                ),
                              )
                            else if(f.Type == 'image')
                              Image.asset(
                                f.Content,
                                fit: BoxFit.cover
                              )
                            else if(f.Type == 'title')
                              Text(
                              f.Content,
                              style: const TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                              )
                              )
                            ,const SizedBox(height: 10)
                          ],
                        )


                    ]
                )
            )
        )
    );
  }
}