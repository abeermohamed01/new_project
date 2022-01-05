import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyTail extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String text4;
  BodyTail({this.text1 , this.text2 , this.text3 , this.text4});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: GoogleFonts.openSansCondensed(
                    fontSize: 25, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text2,
                style: GoogleFonts.openSansCondensed(
                    fontSize: 18, color: Colors.white60),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text3,
                style: GoogleFonts.openSansCondensed(
                    fontSize: 25, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text4,
                style: GoogleFonts.openSansCondensed(
                    fontSize: 18, color: Colors.white60),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
