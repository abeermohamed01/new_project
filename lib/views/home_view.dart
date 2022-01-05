import 'package:flutter/material.dart';
import 'package:new_project/views/desktop_view.dart';
import 'package:new_project/views/mobile_view.dart';
import 'package:new_project/views/tablet_view.dart';
import 'package:new_project/widgets/responsive.dart';


class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Responsive(
        desktop: DesktopView(),
        tablet: TabletView(),
        mobile: MobileView(),
      )
    );
  }
}
