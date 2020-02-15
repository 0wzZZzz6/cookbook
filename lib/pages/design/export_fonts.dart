import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:google_fonts/google_fonts.dart';

class ExportFonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Export Fonts')),
        body: Container(
          child: Column(
            children: <Widget>[
              Text(
                lipsum.createSentence(),
                style: TextStyle(
                    fontFamily: 'Cinzel',
                    package: 'cookbook',
                    color: Colors.red),
              ),
              Text(
                lipsum.createSentence(),
                style: GoogleFonts.aclonica(),
              ),
              Text(lipsum.createSentence())
            ],
          ),
        ));
  }
}
