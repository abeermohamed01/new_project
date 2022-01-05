import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/widgets/body_tail.dart';
import 'package:new_project/widgets/default_form_field.dart';
import 'package:new_project/widgets/social_center.dart';
import 'package:new_project/widgets/subscribe_field.dart';


class MobileView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      physics: AlwaysScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20 , top: 20),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row(
                  // children: [
                  //   IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_outlined , color: Colors.white , size: 30,)),
                  //     SizedBox(width: 300,),
                  //     IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_outlined , color: Colors.white , size: 30,))
                  //
                  //   ],),
                  // SizedBox(height: 20,),
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
              SizedBox(width: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: NetworkImage(
                          'https://static.wixstatic.com/media/72c0b2_705ff15fb87149318c70365eed6e2b13~mv2.png/v1/fill/w_1000,h_594,al_c,usm_0.66_1.00_0.01/72c0b2_705ff15fb87149318c70365eed6e2b13~mv2.png') , width: 400 , height: 400,),
                 // SizedBox(
                  //   height: 20,
                  // ),
                  // BodyTail(
                  //   text1: 'A lot of Components',
                  //   text2: 'All the elements that are contained in Bootstrap.',
                  //   text3: 'Perfect Matching',
                  //   text4:
                  //   'Components are made using the same styles and match.',
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // BodyTail(
                  //   text1: 'Extremely Light & Fast',
                  //   text2: 'Light and clean code installs with ',
                  //   text3: 'Clear Grid',
                  //   text4: 'Components are fixed to the popular 12 Grid system',
                  // ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // SubscribeField(),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // SocialCenter(),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
