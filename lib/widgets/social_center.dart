import 'package:flutter/material.dart';
class SocialCenter extends StatelessWidget {
  final double size;
  final List<Image> images = [
    Image.asset('assets/images/facebook.png'),
    Image.asset('assets/images/flickr.png'),
    Image.asset('assets/images/instagram.png'),
    Image.asset('assets/images/linkedin.png'),
    Image.asset('assets/images/twitter.png'),
  ];

   SocialCenter({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return   Container(
      width: MediaQuery.of(context).size.width*0.3,
      height: MediaQuery.of(context).size.width*0.03,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: AlwaysScrollableScrollPhysics(),
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
    );
  }
}
