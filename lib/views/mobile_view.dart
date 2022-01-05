import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/views/mobile_details.dart';
import 'package:new_project/widgets/default_form_field.dart';



class MobileView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20 , top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
          children: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>MobileDetails()));
              }, icon: Icon(Icons.arrow_forward_outlined , color: Colors.white , size: 30,))

            ],),
          SizedBox(height: 20,),
          Container(
            width: 450,
            child: Text(
              ' THIS IS TEXT This' * 3,
              style: GoogleFonts.openSansCondensed(
                  fontSize: 45, color: Colors.white),
              maxLines: 2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 450,
            child: Text('This is text ' * 20,
                style: GoogleFonts.openSansCondensed(
                    fontSize: 18, color: Colors.white60)),
          ),
          SizedBox(
            height: 10,
          ),
          defaultFormField(width: 310, hint: 'Email *'),
          defaultFormField(width: 310, hint: "Name *"),
          defaultFormField(width: 310, hint: 'Role *'),
          defaultFormField(width: 310, hint: 'Phone *'),
          Row(
            children: [
              defaultFormField(
                  width: 150,
                  hint: 'Country *',
                  suffix: Icons.keyboard_arrow_down),
              SizedBox(
                width: 10,
              ),
              defaultFormField(
                  width: 150,
                  hint: 'City *',
                  suffix: Icons.keyboard_arrow_down),
            ],
          ),
          defaultFormField(
              width: 310,
              hint: 'Selection *',
              suffix: Icons.keyboard_arrow_down),
          defaultFormField(width: 310, hint: 'Message *'),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 90,
            height: 30,
            color: Colors.blue[900],
            child: Center(
              child: Text(
                'SUBMIT',
                style:
                GoogleFonts.openSansCondensed(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
