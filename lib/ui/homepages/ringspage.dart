import 'package:flutter/material.dart';
import 'package:gemstone2/ui/homepages/productdetails.dart';

import '../../color.dart';
class Ringspage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _Ringspagestate();
  }
}
class _Ringspagestate extends State<Ringspage>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
     body:SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Stack(
         children: [
           Container(
             margin: EdgeInsets.only(top: 40),
             padding:EdgeInsets.all(15),
             width:screensize.width,
             child: Row(

               children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                   child: IconButton(icon:Icon(Icons.arrow_back),
                     onPressed: () {
                     Navigator.pop(context);
                     },),
                 ),
                Container(
                  margin: EdgeInsets.only(
                      left:screensize.width*0.25 ),
                  child: Center(
                     child: Directionality(
                       textDirection: TextDirection.rtl,
                       child: Text('الخواتم',
                         style: TextStyle(
                           color:Thintextcolor,
                           fontSize: 18,
                           fontFamily: "Cairo",
                           fontWeight: FontWeight.w700,
                         ),
                       ),
                     ),
                   ),
                ),
               SizedBox(width:  screensize.width*0.25,),
                 Align(
                   alignment:AlignmentDirectional.topEnd,
                   child: Container(
                     margin: EdgeInsets.only(left: screensize.width*0.00001),
                     alignment: Alignment.topRight,
                     child: IconButton(icon:Icon(Icons.search_rounded),
                       onPressed: () { print('serach'); },),
                   ),
                 ),
               ],
             ),
           ),
           Container(
             padding: EdgeInsets.all(15),
             margin: EdgeInsets.only(
                 left:screensize.width*0.60,top:screensize.height*0.20),
             child:   Directionality(
               textDirection: TextDirection.rtl,
               child: Text('العروض الخاصة',
                 style: TextStyle(
                   color:Thintextcolor,
                   fontSize: 18,
                   fontFamily: "Cairo",
                   fontWeight: FontWeight.w700,
                 ),
               ),
             ),
           ),
           Container(
             padding: EdgeInsets.all(15),
             margin: EdgeInsets.only(right: 10,left: 10,top:screensize.height*0.24),
             child: SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               padding: EdgeInsets.all(15),
               child: Row(
                 children: [
                   Banner(
                     message: "15% خصم",
                     location: BannerLocation.topEnd,
                     color: Thintextcolor,
                     child: Container(
                       // padding: EdgeInsets.all(10),
                         margin: EdgeInsets.only(left: 5,right: 5),
                         height: screensize.height*0.20,
                         width: screensize.width*0.35,
                         decoration: BoxDecoration(
                             color:producthome,
                             borderRadius: BorderRadius.all(Radius.circular(15)),
                             border: Border.all(color: producthome),
                             shape: BoxShape.rectangle
                         ),
                         child:Column(
                           children: [
                             Image.asset('images/pro1.png'),
                             Container(
                               margin: EdgeInsets.only(bottom: screensize.height*0.016),
                               child: Directionality(
                                 textDirection: TextDirection.rtl,
                                 child: Text('أوبال أسترالي',
                                   style: TextStyle(
                                     color:Thintextcolor,
                                     fontSize: 16,
                                     fontFamily: "Cairo",
                                     fontWeight: FontWeight.w700,
                                   ),
                                 ),
                               ),
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                     margin:EdgeInsets.all(5),
                                     padding:EdgeInsets.all(5) ,
                                     child:Image.asset('images/hart2.png')
                                 ),
                                 Container(
                                   margin:EdgeInsets.all(5),
                                   padding:EdgeInsets.all(5) ,
                                   child: Directionality(
                                     textDirection: TextDirection.rtl,
                                     child: Text('5.00 د.ع',
                                       style: TextStyle(
                                         color:Thintextcolor,
                                         fontSize: 14,
                                         fontFamily: "Cairo",
                                         fontWeight: FontWeight.w700,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         )
                     ),
                   ),
                   Banner(
                     message: "15% خصم",
                     location: BannerLocation.topEnd,
                     color: Thintextcolor,
                     child: Container(
                       // padding: EdgeInsets.all(10),
                         margin: EdgeInsets.only(left: 5,right: 5),
                         height: screensize.height*0.20,
                         width: screensize.width*0.35,
                         decoration: BoxDecoration(
                             color:producthome,
                             borderRadius: BorderRadius.all(Radius.circular(15)),
                             border: Border.all(color: producthome),
                             shape: BoxShape.rectangle
                         ),
                         child:Column(
                           children: [
                             InkWell(
                             onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder:
                     (context) =>  Productdetails()));
                     }, child: Image.asset('images/pro2.png')),
                             Container(
                               margin: EdgeInsets.only(bottom: 0),
                               child: Directionality(
                                 textDirection: TextDirection.rtl,
                                 child: Text('خاتم زركون أمريكي',
                                   style: TextStyle(
                                     color:Thintextcolor,
                                     fontSize: 16,
                                     fontFamily: "Cairo",
                                     fontWeight: FontWeight.w700,
                                   ),
                                 ),
                               ),
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                     margin:EdgeInsets.all(5),
                                     padding:EdgeInsets.all(5) ,
                                     child:Image.asset('images/hart2.png')
                                 ),
                                 Container(
                                   margin:EdgeInsets.all(5),
                                   padding:EdgeInsets.all(5) ,
                                   child: Directionality(
                                     textDirection: TextDirection.rtl,
                                     child: Text('5.00 د.ع',
                                       style: TextStyle(
                                         color:Thintextcolor,
                                         fontSize: 14,
                                         fontFamily: "Cairo",
                                         fontWeight: FontWeight.w700,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         )
                     ),
                   ),



                   Banner(
                     message: "15% خصم",
                     location: BannerLocation.topEnd,
                     color: Thintextcolor,
                     child: Container(
                       // padding: EdgeInsets.all(10),
                         margin: EdgeInsets.only(left: 5,right: 5),
                         height: screensize.height*0.20,
                         width: screensize.width*0.35,
                         decoration: BoxDecoration(
                             color:producthome,
                             borderRadius: BorderRadius.all(Radius.circular(15)),
                             border: Border.all(color: producthome),
                             shape: BoxShape.rectangle
                         ),
                         child:Column(
                           children: [
                             InkWell(
                             onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder:
                     (context) =>  Productdetails()));
                     }
                                , child: Image.asset('images/pro1.png')),
                             Container(
                               margin: EdgeInsets.only(bottom: screensize.height*0.016),
                               child: Directionality(
                                 textDirection: TextDirection.rtl,
                                 child: Text('أوبال أسترالي',
                                   style: TextStyle(
                                     color:Thintextcolor,
                                     fontSize: 16,
                                     fontFamily: "Cairo",
                                     fontWeight: FontWeight.w700,
                                   ),
                                 ),
                               ),
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                     margin:EdgeInsets.all(5),
                                     padding:EdgeInsets.all(5) ,
                                     child:Image.asset('images/harticon.png')
                                 ),
                                 Container(
                                   margin:EdgeInsets.all(5),
                                   padding:EdgeInsets.all(5) ,
                                   child: Directionality(
                                     textDirection: TextDirection.rtl,
                                     child: Text('5.00 د.ع',
                                       style: TextStyle(
                                         color:Thintextcolor,
                                         fontSize: 14,
                                         fontFamily: "Cairo",
                                         fontWeight: FontWeight.w700,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         )
                     ),
                   ),
                 ],
               ),
             ),
           ),
           Container(
             padding: EdgeInsets.all(15),
             margin: EdgeInsets.only(
                 left:screensize.width*0.60,top:screensize.height*0.47),
             child:   Directionality(
               textDirection: TextDirection.rtl,
               child: Text('جميع المنتجات',
                 style: TextStyle(
                   color:Thintextcolor,
                   fontSize: 18,
                   fontFamily: "Cairo",
                   fontWeight: FontWeight.w700,
                 ),
               ),
             ),
           ),
           Container(
             padding: EdgeInsets.all(15),
             margin: EdgeInsets.only(right: 10,left: 10,top:screensize.height*0.50),
             child: SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               padding: EdgeInsets.all(15),
               child: Row(
                 children: [
                   Banner(
                     message: "15% خصم",
                     location: BannerLocation.topEnd,
                     color: Thintextcolor,
                     child: Container(
                       // padding: EdgeInsets.all(10),
                         margin: EdgeInsets.only(left: 5,right: 5),
                         height: screensize.height*0.20,
                         width: screensize.width*0.35,
                         decoration: BoxDecoration(
                             color:producthome,
                             borderRadius: BorderRadius.all(Radius.circular(15)),
                             border: Border.all(color: producthome),
                             shape: BoxShape.rectangle
                         ),
                         child:Column(
                           children: [
                             InkWell(
                             onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder:
                     (context) =>  Productdetails()));
                     }, child: Image.asset('images/pro1.png')),
                             Container(
                               margin: EdgeInsets.only(bottom: screensize.height*0.016),
                               child: Directionality(
                                 textDirection: TextDirection.rtl,
                                 child: Text('أوبال أسترالي',
                                   style: TextStyle(
                                     color:Thintextcolor,
                                     fontSize: 16,
                                     fontFamily: "Cairo",
                                     fontWeight: FontWeight.w700,
                                   ),
                                 ),
                               ),
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                     margin:EdgeInsets.all(5),
                                     padding:EdgeInsets.all(5) ,
                                     child:Image.asset('images/hart2.png')
                                 ),
                                 Container(
                                   margin:EdgeInsets.all(5),
                                   padding:EdgeInsets.all(5) ,
                                   child: Directionality(
                                     textDirection: TextDirection.rtl,
                                     child: Text('5.00 د.ع',
                                       style: TextStyle(
                                         color:Thintextcolor,
                                         fontSize: 14,
                                         fontFamily: "Cairo",
                                         fontWeight: FontWeight.w700,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         )
                     ),
                   ),
                   Banner(
                     message: "15% خصم",
                     location: BannerLocation.topEnd,
                     color: Thintextcolor,
                     child: Container(
                       // padding: EdgeInsets.all(10),
                         margin: EdgeInsets.only(left: 5,right: 5),
                         height: screensize.height*0.20,
                         width: screensize.width*0.35,
                         decoration: BoxDecoration(
                             color:producthome,
                             borderRadius: BorderRadius.all(Radius.circular(15)),
                             border: Border.all(color: producthome),
                             shape: BoxShape.rectangle
                         ),
                         child:Column(
                           children: [
                             InkWell(
                             onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder:
                     (context) =>  Productdetails()));
                     },child: Image.asset('images/pro2.png')),
                             Container(
                               margin: EdgeInsets.only(bottom: 0),
                               child: Directionality(
                                 textDirection: TextDirection.rtl,
                                 child: Text('خاتم زركون أمريكي',
                                   style: TextStyle(
                                     color:Thintextcolor,
                                     fontSize: 16,
                                     fontFamily: "Cairo",
                                     fontWeight: FontWeight.w700,
                                   ),
                                 ),
                               ),
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                     margin:EdgeInsets.all(5),
                                     padding:EdgeInsets.all(5) ,
                                     child:Image.asset('images/hart2.png')
                                 ),
                                 Container(
                                   margin:EdgeInsets.all(5),
                                   padding:EdgeInsets.all(5) ,
                                   child: Directionality(
                                     textDirection: TextDirection.rtl,
                                     child: Text('5.00 د.ع',
                                       style: TextStyle(
                                         color:Thintextcolor,
                                         fontSize: 14,
                                         fontFamily: "Cairo",
                                         fontWeight: FontWeight.w700,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         )
                     ),
                   ),



                   Banner(
                     message: "15% خصم",
                     location: BannerLocation.topEnd,
                     color: Thintextcolor,
                     child: Container(
                       // padding: EdgeInsets.all(10),
                         margin: EdgeInsets.only(left: 5,right: 5),
                         height: screensize.height*0.20,
                         width: screensize.width*0.35,
                         decoration: BoxDecoration(
                             color:producthome,
                             borderRadius: BorderRadius.all(Radius.circular(15)),
                             border: Border.all(color: producthome),
                             shape: BoxShape.rectangle
                         ),
                         child:Column(
                           children: [
                             InkWell(
                             onTap: (){
                     Navigator.push(context,
                     MaterialPageRoute(builder:
                     (context) =>  Productdetails()));
                     },child: Image.asset('images/pro1.png')),
                             Container(
                               margin: EdgeInsets.only(bottom: screensize.height*0.016),
                               child: Directionality(
                                 textDirection: TextDirection.rtl,
                                 child: Text('أوبال أسترالي',
                                   style: TextStyle(
                                     color:Thintextcolor,
                                     fontSize: 16,
                                     fontFamily: "Cairo",
                                     fontWeight: FontWeight.w700,
                                   ),
                                 ),
                               ),
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                     margin:EdgeInsets.all(5),
                                     padding:EdgeInsets.all(5) ,
                                     child:Image.asset('images/harticon.png')
                                 ),
                                 Container(
                                   margin:EdgeInsets.all(5),
                                   padding:EdgeInsets.all(5) ,
                                   child: Directionality(
                                     textDirection: TextDirection.rtl,
                                     child: Text('5.00 د.ع',
                                       style: TextStyle(
                                         color:Thintextcolor,
                                         fontSize: 14,
                                         fontFamily: "Cairo",
                                         fontWeight: FontWeight.w700,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         )
                     ),
                   ),
                 ],
               ),
             ),
           ),
           //***********************half products*******************//




           //***********************half products*******************//
           Container(
             padding: EdgeInsets.all(15),
             margin: EdgeInsets.only(right: 10,left: 10,top:screensize.height*0.70),
             child: SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               padding: EdgeInsets.all(15),
               child: Row(
                 children: [
                   Banner(
                     message: "15% خصم",
                     location: BannerLocation.topEnd,
                     color: Thintextcolor,
                     child: Container(
                       // padding: EdgeInsets.all(10),
                         margin: EdgeInsets.only(left: 5,right: 5),
                         height: screensize.height*0.20,
                         width: screensize.width*0.35,
                         decoration: BoxDecoration(
                             color:producthome,
                             borderRadius: BorderRadius.all(Radius.circular(15)),
                             border: Border.all(color: producthome),
                             shape: BoxShape.rectangle
                         ),
                         child:Column(
                           children: [
                             Image.asset('images/pro1.png'),
                             Container(
                               margin: EdgeInsets.only(bottom: 15),
                               child: Directionality(
                                 textDirection: TextDirection.rtl,
                                 child: Text('أوبال أسترالي',
                                   style: TextStyle(
                                     color:Thintextcolor,
                                     fontSize: 16,
                                     fontFamily: "Cairo",
                                     fontWeight: FontWeight.w700,
                                   ),
                                 ),
                               ),
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                     margin:EdgeInsets.all(5),
                                     padding:EdgeInsets.all(5) ,
                                     child:Image.asset('images/hart2.png')
                                 ),
                                 Container(
                                   margin:EdgeInsets.all(5),
                                   padding:EdgeInsets.all(5) ,
                                   child: Directionality(
                                     textDirection: TextDirection.rtl,
                                     child: Text('5.00 د.ع',
                                       style: TextStyle(
                                         color:Thintextcolor,
                                         fontSize: 14,
                                         fontFamily: "Cairo",
                                         fontWeight: FontWeight.w700,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         )
                     ),
                   ),
                   Banner(
                     message: "15% خصم",
                     location: BannerLocation.topEnd,
                     color: Thintextcolor,
                     child: Container(
                       // padding: EdgeInsets.all(10),
                         margin: EdgeInsets.only(left: 5,right: 5),
                         height: screensize.height*0.20,
                         width: screensize.width*0.35,
                         decoration: BoxDecoration(
                             color:producthome,
                             borderRadius: BorderRadius.all(Radius.circular(15)),
                             border: Border.all(color: producthome),
                             shape: BoxShape.rectangle
                         ),
                         child:Column(
                           children: [
                             Image.asset('images/pro2.png'),
                             Container(
                               margin: EdgeInsets.only(bottom: 0),
                               child: Directionality(
                                 textDirection: TextDirection.rtl,
                                 child: Text('خاتم زركون أمريكي',
                                   style: TextStyle(
                                     color:Thintextcolor,
                                     fontSize: 16,
                                     fontFamily: "Cairo",
                                     fontWeight: FontWeight.w700,
                                   ),
                                 ),
                               ),
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                     margin:EdgeInsets.all(5),
                                     padding:EdgeInsets.all(5) ,
                                     child:Image.asset('images/hart2.png')
                                 ),
                                 Container(
                                   margin:EdgeInsets.all(5),
                                   padding:EdgeInsets.all(5) ,
                                   child: Directionality(
                                     textDirection: TextDirection.rtl,
                                     child: Text('5.00 د.ع',
                                       style: TextStyle(
                                         color:Thintextcolor,
                                         fontSize: 14,
                                         fontFamily: "Cairo",
                                         fontWeight: FontWeight.w700,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         )
                     ),
                   ),



                   Banner(
                     message: "15% خصم",
                     location: BannerLocation.topEnd,
                     color: Thintextcolor,
                     child: Container(
                       // padding: EdgeInsets.all(10),
                         margin: EdgeInsets.only(left: 5,right: 5),
                         height: screensize.height*0.20,
                         width: screensize.width*0.35,
                         decoration: BoxDecoration(
                             color:producthome,
                             borderRadius: BorderRadius.all(Radius.circular(15)),
                             border: Border.all(color: producthome),
                             shape: BoxShape.rectangle
                         ),
                         child:Column(
                           children: [
                             Image.asset('images/pro1.png'),
                             Container(
                               margin: EdgeInsets.only(bottom: screensize.height*0.016),
                               child: Directionality(
                                 textDirection: TextDirection.rtl,
                                 child: Text('أوبال أسترالي',
                                   style: TextStyle(
                                     color:Thintextcolor,
                                     fontSize: 16,
                                     fontFamily: "Cairo",
                                     fontWeight: FontWeight.w700,
                                   ),
                                 ),
                               ),
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                     margin:EdgeInsets.all(5),
                                     padding:EdgeInsets.all(5) ,
                                     child:Image.asset('images/harticon.png')
                                 ),
                                 Container(
                                   margin:EdgeInsets.all(5),
                                   padding:EdgeInsets.all(5) ,
                                   child: Directionality(
                                     textDirection: TextDirection.rtl,
                                     child: Text('5.00 د.ع',
                                       style: TextStyle(
                                         color:Thintextcolor,
                                         fontSize: 14,
                                         fontFamily: "Cairo",
                                         fontWeight: FontWeight.w700,
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         )
                     ),
                   ),
                 ],
               ),
             ),
           ),
           //************************end half products*****************//

         ],
       ),

     ),
   );
  }

}