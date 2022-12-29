import 'package:flutter/material.dart';
import 'package:gemstone2/ui/signin.dart';

import '../color.dart';
class Thirdintro extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _thirdintro();
  }
}
class _thirdintro extends State<Thirdintro>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.only(top: screensize.height*0.05,
              ),
              child: Image.asset('images/into3.png')),
          SizedBox(
            height: screensize.height*0.08,
          ),
          Center(
            child: Directionality(
    textDirection: TextDirection.rtl,
              child: Text('إذن الوصول',
                style: TextStyle(
                  color:Thintextcolor,
                  fontSize: 24,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(
            height: screensize.height*0.0015,
          ),
          Container(
            padding: EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 5),
            child: Center(
              child:Directionality(
    textDirection: TextDirection.rtl,
                child: Text('يحتاج التطبيق إلى صلاحية الوصول إلى موقعك من أجل خدمات التوصيل',

                  style: TextStyle(
                    color:Subthintextcolor,
                    fontSize: 18,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: screensize.height*0.015,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: screensize.width*0.45,left: screensize.width*0.45),
            child: Row(
              children: [
                InkWell(
                  child: Image.asset('images/circle1.png'),
                ),
                SizedBox(width: 15,),
                InkWell(
                  child: Image.asset('images/circle2.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screensize.height*0.05,
          ),
          Container(
            width: 300,
            height: 70,
            margin: EdgeInsets.only(right: screensize.width*0.25,left:screensize.width*0.25),
            child: ElevatedButton(style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Butn),
              elevation:MaterialStateProperty.all(12),
              padding:MaterialStateProperty.all(EdgeInsets.all(5)),
            ), onPressed:(){
              Navigator.push(context,
                  MaterialPageRoute(builder:  (context) =>  Signin()));
            }, child: Text('السماح',
              style: TextStyle(
                color:Colors.white,
                fontSize: 24,
                fontFamily: "Cairo",
                fontWeight: FontWeight.w700,
              ),
            )),
          ),

          SizedBox(
            height: screensize.height*0.035,
          ),
          Container(
            padding: EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 5),
            child: Center(
              child:  Directionality(
                textDirection: TextDirection.rtl,
                child: Text('الرفض',
                  style: TextStyle(
                    color:thirdreuseclktext,
                    fontSize: 16,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w700,
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

