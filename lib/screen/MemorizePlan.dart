import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Memorize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return ResponsiveWidgets.builder(
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
      child: Scaffold(
        backgroundColor: Color(0xffEEF1F2),
        appBar: AppBar(
          backgroundColor: Color(0xffEEF1F2),
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: Text(
            'Memorize',
            style: TextStyle(
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.exit_to_app,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Plans(),
            Plans(),
            Plans(),
          ],
        ),
      ),
    );
  }
}

class Plans extends StatelessWidget {
  const Plans({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
      child: Container(
        height: 180.h * 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TextResponsive(
                  'Plan 1',
                  style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 150.h,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TextResponsive(
                  'Total Dua: 26',
                  style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 95.h,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff9DADBB)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: TextResponsive(
                  'Day Remaining: 10',
                  style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 95.h,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff9DADBB)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextResponsive(
                      'Completed: 5/26',
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 95.h,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff9DADBB)),
                    ),
                    TextResponsive(
                      ' 30% Completed',
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 95.h,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff9DADBB)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: LinearPercentIndicator(
                  // width: 140.0,
                  lineHeight: 14.0,
                  percent: 0.3,
                  backgroundColor: Color(0xffE8E8E8),
                  progressColor: Color(0xff51CE8B),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
