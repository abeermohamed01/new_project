import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/widgets/body_tail.dart';

class MobileDetails extends StatelessWidget {
  final List<Image> images = [
    Image.asset('assets/images/facebook.png'),
    Image.asset('assets/images/flickr.png'),
    Image.asset('assets/images/instagram.png'),
    Image.asset('assets/images/linkedin.png'),
    Image.asset('assets/images/twitter.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_outlined , color: Colors.white , size: 30,))

              ],),
            Container(
              width: 450,
              height: 350,
              child: Image(
                image: NetworkImage(
                    'https://static.wixstatic.com/media/72c0b2_705ff15fb87149318c70365eed6e2b13~mv2.png/v1/fill/w_1000,h_594,al_c,usm_0.66_1.00_0.01/72c0b2_705ff15fb87149318c70365eed6e2b13~mv2.png') , width: 400 , height: 400,),
            ),

            BodyTail(
              text1: 'A lot of Components',
              text2: 'All the elements that are contained in Bootstrap.',
              text3: 'Perfect Matching',
              text4:
              'Components are made using the same styles and match.',
            ),
            SizedBox(
              height: 20,
            ),
            BodyTail(
              text1: 'Extremely Light & Fast',
              text2: 'Light and clean code installs with ',
              text3: 'Clear Grid',
              text4: 'Components are fixed to the popular 12 Grid system',
            ),
            SizedBox(
              height: 30,
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.7,
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
              width: 80,
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
        ),
      //  SizedBox(height: 20,),
        Container(
          width:400,
          height:50,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) =>
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 30,
                    height: 30,
                    child:images[index],
                  ),
                ),
          ),
        ),         ],
        ),
      ),
    );
  }
}
