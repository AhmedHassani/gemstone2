
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gemstone2/ui/thirdintro.dart';

import '../color.dart';
import 'login.dart';

class Seconintroui extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
  return _stateSeconintroui();
  }
}

class _stateSeconintroui extends State<Seconintroui>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   return Scaffold(
     body: ListView(
       children: [
         Container(
             margin: EdgeInsets.only(top: screensize.height*0.09,
             ),
             child: Image.asset('images/inntrow2.png')),
         SizedBox(
           height: screensize.height*0.09,
         ),
         Center(
           child:  Directionality(
             textDirection: TextDirection.rtl,
             child: Text('توصيل إلى المنزل',
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
             child: Directionality(
               textDirection: TextDirection.rtl,
               child: Text('استمتع بخدمات التوصيل حيث تستطيع الطلب ونحن نقوم بتوصيل كافة المنتجات بسرعة وأمانة',

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
           height: screensize.height*0.00001,
         ),
         Container(
           alignment: Alignment.center,
           margin: EdgeInsets.only(right: screensize.width*0.45,left: screensize.width*0.45),
           child: Row(
             children: [
               InkWell(
                 child: Image.asset('images/circle1.png'),
               ),
               SizedBox(width: 9,),
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
                 MaterialPageRoute(builder:  (context) =>  Thirdintro()));
           }, child: Text('ابدأ الآن',
             style: TextStyle(
               color:Colors.white,
               fontSize: 24,
               fontFamily: "Cairo",
               fontWeight: FontWeight.w700,
             ),
           )),
         ),
       ],
     ),
   );
  }

}