import 'package:adobe_xd/adobe_xd.dart';
import 'package:demo/model/animationHeader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class AudioNew extends StatefulWidget {
  @override
  _AudioNewState createState() => _AudioNewState();
}

class _AudioNewState extends State<AudioNew> {
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
          body: Column(
            children: [
              Stack(
                children: [
                  AnimationHeader(353.83 * 2),
                  SafeArea(
                      child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  )),
                  SafeArea(
                    child: Center(
                      child: Column(
                        children: [
                          TextResponsive(
                            'Audio',
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 150.h),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 60.h),
                            child: TextResponsive(
                              'BRIEF AUDIO',
                              style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  color: Colors.white,
                                  fontSize: 110.h),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 65.h),
                              child: Image.asset('assets/soundwave.png')),
                          Slider(
                            activeColor: Color(0xff7EF3D3),
                            inactiveColor: Colors.white,
                            min: 0,
                            max: 100,
                            value: 45,
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/Rectangle 703.png'),
                              Image.asset('assets/skip-backward-fill.png'),
                              Image.asset('assets/Playbar.png'),
                              Image.asset('assets/skip-forward-fill.png'),
                              Image.asset('assets/front.png'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              RowOption('Introduction TO Prayer', 10, 'assets/envira.png',
                  Color(0xffFFEFEF)),
              RowOption('Instant Prayer', 10, 'assets/microphoneg.png',
                  Color(0xffE4FFEA)),
              RowOption('Protection From Evil', 10, 'assets/rocket.png',
                  Color(0xffF8F2FF)),
              RowOption('Prayer Time', 10, 'assets/Path 11709.png',
                  Color(0xffE9FBFF)),
              RowOption('Prayer Category', 10, 'assets/microphone.png',
                  Color(0xffFFEFEF)),
            ],
          )),
    );
  }
}

class RowOption extends StatelessWidget {
  final String _text;
  final String photoID;
  final int item;
  final Color cc;
  RowOption(this._text, this.item, this.photoID, this.cc);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 5),
      child: Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: CircleAvatar(
                  radius: 45.h,
                  backgroundColor: cc,
                  //Color(0xffFFEFEF),
                  child: Image.asset(photoID),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextResponsive(
                    _text,
                    style: TextStyle(fontFamily: 'Gilroy', fontSize: 100.h),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextResponsive(
                    'Subcategory:   $item',
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        color: Color(0xff7F909F),
                        fontSize: 85.h),
                  )
                ],
              )
            ],
          )),
    );
  }
}
