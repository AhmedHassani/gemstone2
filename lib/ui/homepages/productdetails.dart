import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import '../../color.dart';
import 'moreproducts.dart';
class Productdetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return _Productdetails();
  }
}
class _Productdetails extends State<Productdetails>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screensize.width,
            height: screensize.height*0.45,
            decoration: BoxDecoration(
              color:searcecolor,
            ),
            child: Column(children: [
              Center(child: Image.asset('images/zobon.png')),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: screensize.width*0.30,
                    left: screensize.width*0.39,
                    top:screensize.height*0*23

                ),
                child: Row(
                  children: [
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
                    SizedBox(width: 10,),
                    InkWell(
                      child: Image.asset('images/bullball.png'),
                    ),
                  ],
                ),
              ),
            ],),
          ),
         Container(
           margin: EdgeInsets.only(top: screensize.height*0.35),
           width: screensize.width,
           height: screensize.height*0.55,
           decoration: BoxDecoration(
             color:Colors.white,
             border: Border.all(
             color: searcecolor,
               width: 2
             ),
             borderRadius: BorderRadius.all(Radius.circular(46)
             )
           ),
           child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(
               children: [
                 Row(
                   children: [
                     Container(
                       width: screensize.width*0.24,
                       height: 35,
                       margin: EdgeInsets.only(left: screensize.width*0.15),
                       decoration: BoxDecoration(
                         color: boxscoll,
                         shape: BoxShape.rectangle,
                         border: Border.all(
                             color: boxscoll,
                             width: 1
                         ),
                         borderRadius: BorderRadius.all(Radius.circular(6)),
                       ),
                      // padding: EdgeInsets.all(1),
                      // margin:EdgeInsets.only(left: 10,right: 10,top: 35),
                       child: Row(
                         //mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Container(
                             margin: EdgeInsets.only(right: 6)
                               ,child:
                               IconButton(onPressed: (){},
                              icon:Icon(Iconsax.add,
                               color: Colors.white,
                              )
                               )
                           ),
                           //SizedBox(width:  screensize.width*0.006,),
                           Container(
                             margin: EdgeInsets.only(top: screensize.height*0.001),
                             child: Directionality(
                               textDirection: TextDirection.rtl,
                               child: Text('1',
                                 style: TextStyle(
                                   color:Colors.white,
                                   fontSize: 12,
                                   fontFamily: "Cairo",
                                   fontWeight: FontWeight.w700,
                                 ),
                               ),
                             ),
                           ),
                           //SizedBox(width:  screensize.width*0.006,),
                           Container(
                             margin: EdgeInsets.only(left: 15,top: screensize.height*0.008),
                 child:Image.asset('images/sub.png')
                           )
                         ],
                       ),
                     ),
                     Container(
                       alignment: AlignmentDirectional.center,
                       margin: EdgeInsets.only(left: screensize.width*0.05),
                       child: Center(
                         child: Directionality(
                           textDirection: TextDirection.rtl,
                           child: Text('خاتم زركون أمريكي',
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

                   ],
                 ),
               Row(
                 children: [
                   Container(
                     margin: EdgeInsets.only(left: screensize.width*0.60),
                     child:  Directionality(
                       textDirection: TextDirection.rtl,
                       child: Text('8.00 د.ع',
                         style: TextStyle(
                           color:bastcolor,
                           fontSize: 16,
                           fontFamily: "Cairo",
                           fontWeight: FontWeight.w700,
                         ),
                       ),
                     ),
                   ),

                   SizedBox(width: 20,),
                   Container(
                     alignment: AlignmentDirectional.topEnd,
                     child:  Directionality(
                       textDirection: TextDirection.rtl,
                       child: Text('5.00 د.ع',
                         style: TextStyle(
                           color:Thintextcolor,
                           fontSize: 18,
                           fontFamily: "Cairo",
                           fontWeight: FontWeight.w700,
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
               Row(
                 children: [
                   Container(
                     margin: EdgeInsets.only(left: 15)
                     ,child: Image.asset('images/hart.png'),
                   ),
                   Container(
                     margin: EdgeInsets.only(left: 10),
                     child:  Directionality(
                       textDirection: TextDirection.rtl,
                       child: Text('أضف إلى المفضلة',
                         style: TextStyle(
                           color:favritescolor,
                           fontSize: 16,
                           fontFamily: "Cairo",
                           fontWeight: FontWeight.w600,
                         ),
                       ),
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.only(left: screensize.width*0.11),
                     child: Image.asset('images/star.png'),
                   ),
                   Container(
                     margin: EdgeInsets.only(left: screensize.width*0.0099),
                     child:  Directionality(
                       textDirection: TextDirection.rtl,
                       child: Text('4.8',
                         style: TextStyle(
                           color:favritescolor,
                           fontSize: 12,
                           fontFamily: "Cairo",
                           fontWeight: FontWeight.w600,
                         ),
                       ),
                     ),
                   ),
                   Container(
                     margin: EdgeInsets.only(left: screensize.width*0.21),
                     child:  Directionality(
                       textDirection: TextDirection.rtl,
                       child: Text('متوفر',
                         style: TextStyle(
                           color:favritescolor,
                           fontSize: 16,
                           fontFamily: "Cairo",
                           fontWeight: FontWeight.w600,
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
               Image.asset('images/sapline.png'),
               Container(
                 margin: EdgeInsets.only(left: screensize.width*0.60),
                 child:  Directionality(
                   textDirection: TextDirection.rtl,
                   child: Text('تفاصيل المنتج',
                     style: TextStyle(
                       color:Thintextcolor,
                       fontSize: 16,
                       fontFamily: "Cairo",
                       fontWeight: FontWeight.w600,
                     ),
                   ),
                 ),
               ),
                 SizedBox(height: 15,),
                 Container(
                   padding: EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 5),
                   child: Center(
                     child: Directionality(
                       textDirection: TextDirection.rtl,
                       child: InkWell(
                         onTap:(){
                           Navigator.push(context,
                               MaterialPageRoute(builder:  (context) =>  Moreproducts()));
                         },
                         child: Text('هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر المزيد',

                           style: TextStyle(
                             color:Subthintextcolor,
                             fontSize: 12,
                             fontFamily: "Cairo",
                             fontWeight: FontWeight.w400,
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),
                 SizedBox(height:screensize.height*0.12),
                 Container(
                   width: screensize.width*0.9,
                   height: screensize.height*0.10,
                   decoration: BoxDecoration(
                     color: favritescolor,
                     border: Border.all(color: Colors.white,
                     width: 2
                     ),
                     borderRadius: BorderRadius.all(Radius.circular(22)),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         margin: EdgeInsets.only(left: screensize.width*0.10,
                         top: screensize.height*0.02
                         ),
                         alignment: AlignmentDirectional.topEnd,
                         child:  Directionality(
                           textDirection: TextDirection.rtl,
                           child: Text('5.00 د.ع',
                             style: TextStyle(
                               color:Colors.white,
                               fontSize: 22,
                               fontFamily: "Cairo",
                               fontWeight: FontWeight.w700,
                             ),
                           ),
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(right: screensize.width*0.03),
                   width: screensize.width*0.35,
                     height: screensize.height*0.07,
                     decoration: BoxDecoration(
                       color: searcecolor,
                       border: Border.all(color: Colors.white,
                           width: 2
                       ),
                       borderRadius: BorderRadius.all(Radius.circular(22)),
                       ),
                      child: Row(
                         children: [
                           Container(
                             margin: EdgeInsets.only(left: 5,right: 5)
                             ,child:  Directionality(
                               textDirection: TextDirection.rtl,
                               child: Text('أضف إلى السلة',
                                 style: TextStyle(
                                   color:Thintextcolor,
                                   fontSize: 14,
                                   fontFamily: "Cairo",
                                   fontWeight: FontWeight.w900,
                                 ),
                               ),
                             ),
                           ),

                           Container(
                               margin: EdgeInsets.only(left: 5,right: 5),
                             child: Image.asset('images/iconbasket.png'),
                           ),
                         ],
                      ),
                       )
                     ],
                   ),
                 )
               ],
             ),
           ),
         )
        ],
      ),
    );
  }

}