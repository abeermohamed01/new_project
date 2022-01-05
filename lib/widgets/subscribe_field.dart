import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SubscribeField extends StatelessWidget {
final double width;

  const SubscribeField({Key key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width,
          height: 40,
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[900],
              hintText: 'Email Address',
              hintStyle: GoogleFonts.openSansCondensed(
                  fontSize: 20, color: Colors.white12),
            ),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          width: MediaQuery.of(context).size.width*0.08,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(3),
          ),
          child: Center(
            child: Text(
              'SUBSCRIBE',
              style: GoogleFonts.openSansCondensed(
                  color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
