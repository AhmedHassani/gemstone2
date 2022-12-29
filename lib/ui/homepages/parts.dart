import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../color.dart';
class pagepart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _pagepartstate();
  }
}
class _pagepartstate extends State<pagepart>{
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    final imageList = [
      'images/sliderpage.png','images/sliderpage.png','images/sliderpage.png'
    ];
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
            ),
            padding:EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left:screensize.width*0.35,

              ),
                  child: Center(
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text('الأقسام',
                        style: TextStyle(
                          color:Thintextcolor,
                          fontSize: 24,
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: screensize.width*0.25,),

                Align(
                  alignment:AlignmentDirectional.topEnd,
                  child: Container(
                    margin: EdgeInsets.only(right: screensize.width*0.00001,
                    ),
                    alignment: Alignment.topRight,
                    child: IconButton(icon:Icon(Icons.search_rounded),
                      onPressed: () { print('serach'); },),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: CarouselSlider(
              items: imageList.map((e) {
                return Image.asset(e,fit: BoxFit.fill,width: screensize.width*0.9);
              }).toList(),
              options: CarouselOptions(
                height: 150.0,
                aspectRatio: 5.0,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 500),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                onPageChanged: (index, next) {
                  setState(() {
                    _current = index;
                  });
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: screensize.width*0.30,
                left: screensize.width*0.35,
              top: 20
            ),
            child: Row(
              children: [
                InkWell(
                  child: Image.asset('images/circle1.png'),
                ),
                SizedBox(width: 10,),
                InkWell(
                  child: Image.asset('images/circle2.png'),
                ),

                SizedBox(width: 10,),
                InkWell(
                  child: Image.asset('images/circle2.png'),
                ),

                SizedBox(width: 10,),
                InkWell(
                  child: Image.asset('images/circle2.png'),
                ),

                SizedBox(width: 10,),
                InkWell(
                  child: Image.asset('images/circle2.png'),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left:screensize.width*0.65),
            child: Center(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text('جميع الأقسام',
                  style: TextStyle(
                    color:Thintextcolor,
                    fontSize: 14,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            width: screensize.width*0.9,
            height:screensize.height*0.20,
            decoration: BoxDecoration(
              image: DecorationImage(image:AssetImage('images/sol.png'))
            ),
            child: Container(
              margin: EdgeInsets.only(right: screensize.width*0.66,top: screensize.height*0.10),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text('الأعمال الروحية',
                  style: TextStyle(
                    color:otpbox,
                    fontSize: 16,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),


          Container(
            alignment: Alignment.topRight,
            width: screensize.width*0.9,
            height:screensize.height*0.20,
            decoration: BoxDecoration(
                image: DecorationImage(image:AssetImage('images/twopartprod.png'))
            ),
            child: Container(
              margin: EdgeInsets.only(right: screensize.width*0.74,top: screensize.height*0.10),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text('الخواتم',
                  style: TextStyle(
                    color:otpbox,
                    fontSize: 16,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),




          Container(
            // margin: EdgeInsets.only(top: 0),
            alignment: Alignment.topRight,
            width: screensize.width*0.9,
            height:screensize.height*0.20,
            decoration: BoxDecoration(
                image: DecorationImage(image:AssetImage('images/sol.png'))
            ),
            child: Container(
              margin: EdgeInsets.only(right: screensize.width*0.66,top: screensize.height*0.10),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text('الأعمال الروحية',
                  style: TextStyle(
                    color:otpbox,
                    fontSize: 16,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

  }
}