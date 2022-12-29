import 'package:flutter/material.dart';
import 'package:gemstone2/ui/seconintroui.dart';
import '../color.dart';
class login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return _loginstate();
  }
}
class _loginstate extends State<login>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
  return Scaffold(
    body: ListView(
      children: [
        Container(
             margin: EdgeInsets.only(top: screensize.height*0.05,
    ),
            child: Image.asset('images/home1.png')),
        SizedBox(
          height: screensize.height*0.05,
        ),
        Center(
          child:  Directionality(
           textDirection: TextDirection.rtl,
            child: Text('أسهل وأرخص',
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
          height: screensize.height*0.0001,
        ),
        Container(
          padding: EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 5),
          child: Center(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Text('استعرض العديد من المنتجات المميزة بسهولة وتمتّع بالكثير من العروض والخصومات الخاصة',

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
          height: screensize.height*0.0015,
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
          height: 60,
          margin: EdgeInsets.only(right: screensize.width*0.25,left:screensize.width*0.25),
          child: ElevatedButton(style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Butn),
            elevation:MaterialStateProperty.all(12),
            padding:MaterialStateProperty.all(EdgeInsets.all(5)),
    ), onPressed:(){
            Navigator.push(context,
                MaterialPageRoute(builder:  (context) =>  Seconintroui()));
          }, child: Directionality(
            textDirection: TextDirection.rtl,

            child: Text('التالي',
              style: TextStyle(
                color:Colors.white,
                fontSize: 24,
                fontFamily: "Cairo",
                fontWeight: FontWeight.w700,
              ),
            ),
          )),
        ),

        SizedBox(
          height: screensize.height*0.029,
        ),
        Container(
          padding: EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 5),
          child: Center(
            child: Directionality(

    textDirection: TextDirection.rtl,
              child: Text('تخطي',

                style: TextStyle(
                  color:Subthintextcolor,
                  fontSize: 13,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w900,
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