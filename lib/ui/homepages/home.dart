import 'package:flutter/material.dart';
import 'package:gemstone2/ui/homepages/parts.dart';
import 'package:gemstone2/ui/homepages/productdetails.dart';
import 'package:gemstone2/ui/homepages/ringspage.dart';
import '../../color.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _homestate();
  }
}
class _homestate extends State<Home>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return  SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Stack(
         children: [
           Container(
             margin: EdgeInsets.only(top: 10),
             padding:EdgeInsets.all(15),
             width:screensize.width,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Image.asset('images/ring.png',
                 ),
                 Image.asset('images/small logo.png',
                 ),
               ],
             ),
           ),
         Container(
           height: 50,
           width: screensize.width*0.999,
           margin: EdgeInsets.only(right: 10,left: 10,top:screensize.height*0.15),
           decoration: BoxDecoration(
             border: Border.all(color: Subthintextcolor,width: 0.4),
             color: Colors.white,
             shape: BoxShape.rectangle
           ),
           child: TextField(
             decoration: InputDecoration(
               suffixIcon: InkWell(
                 onTap: (){print('serach');},
                 child: Icon(Icons.search,
                 color: Thintextcolor,
                 ),
               ),
               prefixIcon: InkWell(
                 onTap: (){print('serach');},
                 child: Icon(Icons.account_tree_outlined,
                 color: Thintextcolor,
                 ),
               ),
               label:  Directionality(
                 textDirection: TextDirection.rtl,
                 child: Text('ادخل ما تريد البحث عنه',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Subthintextcolor,
                    fontSize: 16,
                    fontFamily: "Cairo",
                  ),
                 ),
               ),
             ),
           ),
         ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(right: 10,left: 10,top:screensize.height*0.25),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 122,
                        height: 35,
                        decoration: BoxDecoration(
                          color: otherboxscoll,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                              color:otherboxscoll,
                              width: 1
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        padding: EdgeInsets.all(1),
                        margin:EdgeInsets.only(left: 10,right: 10),
                        child:Center(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text('الكشف الأسبوعي',
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
                        width: 90,
                        height: 35,
                        decoration: BoxDecoration(
                          color: otherboxscoll,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                              color: otherboxscoll,
                              width: 1
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        padding: EdgeInsets.all(1),
                        margin:EdgeInsets.only(left: 10,right: 10),
                        child:InkWell(
                          onTap: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder:  (context) =>  Ringspage()));
                          },
                          child: Center(
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Text('الخواتم',
                                style: TextStyle(
                                  color:Thintextcolor,
                                  fontSize: 16,
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 35,
                        decoration: BoxDecoration(
                          color: boxscoll,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                              color: boxscoll,
                              width: 1
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        ),
                        padding: EdgeInsets.all(1),
                        margin:EdgeInsets.only(left: 10,right: 10),
                        child:Center(
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text('الكل',
                              style: TextStyle(
                                color:Colors.white,
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
                ),
              ),
           Container(
             padding: EdgeInsets.all(15),
             margin: EdgeInsets.only(right: 10,left: 10,top:screensize.height*0.30),
             child: SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               padding: EdgeInsets.all(15),
               child: Row(
                 children: [

                   Container(
                     padding: EdgeInsets.all(15),
                     margin: EdgeInsets.only(right:15,left: 15),
                     height: screensize.height*0.17,
                     width: screensize.width*0.79,
                     decoration: BoxDecoration(
                       color:sliderhome,
                       borderRadius: BorderRadius.all(Radius.circular(15)),
                       border: Border.all(color: sliderhome),
                       shape: BoxShape.rectangle
                     ),
                    child:Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 0),
                          child: Image.asset('images/pro2.png'
                           ,width: 100,height: 100,
                          ),
                        ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 100),
                            child: Row(
                              children: [
                                Container(
                                  padding:EdgeInsets.all(5) ,
                                  child: Image.asset('images/Line.png',
                                  ),
                                ),
                                Container(
                                  padding:EdgeInsets.all(5) ,
                                  child: Image.asset('images/Deals.png'
                                  ),
                                ),
                                Container(
                                  padding:EdgeInsets.all(5) ,
                                  child: Image.asset('images/Line.png'

                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 100),
                            padding:EdgeInsets.all(5) ,
                            child: Image.asset('images/text.png'
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 100),
                            padding:EdgeInsets.all(5) ,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(55))
                            ),
                            child:   Container(
                              width: 100,
                              height: 30,
                              child: ElevatedButton(style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Thintextcolor),
                                elevation:MaterialStateProperty.all(12),
                              ), onPressed:(){
                                Navigator.push(context,
                                    MaterialPageRoute(builder:  (context) =>pagepart()));
                              },
                                  child: Directionality(
                                textDirection: TextDirection.ltr,

                                child: Text('Shop Now',
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 12,
                                    fontFamily: "Cairo",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )),
                            ),
                          ),
                        ],
                      )

                      ],
                    ),
                   ),
                   Container(
                     padding: EdgeInsets.all(15),
                     margin: EdgeInsets.only(right:15,left: 15),
                     height: screensize.height*0.17,
                     width: screensize.width*0.79,
                     decoration: BoxDecoration(
                         color:sliderhome,
                         borderRadius: BorderRadius.all(Radius.circular(15)),
                         border: Border.all(color: sliderhome),
                         shape: BoxShape.rectangle
                     ),
                     child:Stack(
                       children: [
                         Container(
                           margin: EdgeInsets.only(left: 0),
                           child: Image.asset('images/pro2.png'
                             ,width: 100,height: 100,
                           ),
                         ),
                         Column(
                           children: [
                             Container(
                               margin: EdgeInsets.only(left: 100),
                               child: Row(
                                 children: [
                                   Container(
                                     padding:EdgeInsets.all(5) ,
                                     child: Image.asset('images/Line.png',
                                     ),
                                   ),
                                   Container(
                                     padding:EdgeInsets.all(5) ,
                                     child: Image.asset('images/Deals.png'
                                     ),
                                   ),
                                   Container(
                                     padding:EdgeInsets.all(5) ,
                                     child: Image.asset('images/Line.png'
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(left: 100),
                               padding:EdgeInsets.all(5) ,
                               child: Image.asset('images/text.png'
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(left: 100),
                               padding:EdgeInsets.all(5) ,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.all(Radius.circular(55))
                               ),
                               child:   Container(
                                 width: 100,
                                 height: 30,
                                 child: ElevatedButton(style: ButtonStyle(
                                   backgroundColor: MaterialStateProperty.all(Thintextcolor),
                                   elevation:MaterialStateProperty.all(12),
                                 ), onPressed:(){
                                   Navigator.push(context,
                                       MaterialPageRoute(builder:  (context) =>pagepart()));
                                 },
                                     child: Directionality(
                                       textDirection: TextDirection.ltr,
                                       child: Text('Shop Now',
                                         style: TextStyle(
                                           color:Colors.white,
                                           fontSize: 12,
                                           fontFamily: "Cairo",
                                           fontWeight: FontWeight.w700,
                                         ),
                                       ),
                                     )),
                               ),
                             ),
                           ],
                         )

                       ],
                     ),
                   ),
                 ],
               ),
             ),
           ),
           Container(
             padding: EdgeInsets.all(15),
             margin: EdgeInsets.only(right: 10,
                 left: 10,top:screensize.height*0.50),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Directionality(
                   textDirection: TextDirection.rtl,
                   child: Text('مشاهدة الكل',
                     style: TextStyle(
                       color:Thintextcolor,
                       fontSize: 12,
                       fontFamily: "Cairo",
                       fontWeight: FontWeight.w700,
                     ),
                   ),
                 ),
                 Directionality(
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
               ],
             ),
           ),
           Container(
             padding: EdgeInsets.all(15),
             margin: EdgeInsets.only(right: 10,left: 10,top:screensize.height*0.54),
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
                               }
                               ,child: Image.asset('images/pro1.png')),
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
                                 ,child: Image.asset('images/pro2.png')),
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
           Container(
             padding: EdgeInsets.all(15),
             margin: EdgeInsets.only(right: 10,
                 left: 10,top:screensize.height*0.75),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Directionality(
                   textDirection: TextDirection.rtl,
                   child: Text('آخر المنتجات',
                     style: TextStyle(
                       color:Thintextcolor,
                       fontSize: 12,
                       fontFamily: "Cairo",
                       fontWeight: FontWeight.w700,
                     ),
                   ),
                 ),
                 Directionality(
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
               ],
             ),
           ),
           Container(
             padding: EdgeInsets.all(15),
             margin: EdgeInsets.only(right: 10,left: 10,top:screensize.height*0.79),
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
                     },
                     child: Image.asset('images/pro2.png')),
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
                     },
                    child: Image.asset('images/pro1.png')),
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

   );
  }

}