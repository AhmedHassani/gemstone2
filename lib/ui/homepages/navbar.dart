import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../color.dart';
import 'customnavicon.dart';
import 'navcontroller.dart';


class CustomNavigation extends StatelessWidget {
  CustomNavigation({Key? key, Function(int index)? onTab}) : super(key: key);
  final NavbarController _navbarController = Get.put(NavbarController());

  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;

    return Obx(() => Container(
      padding: EdgeInsets.all(0.7),
      height:screensize.height*0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color:Butn,
      ),
      width: Get.width,
      margin: const EdgeInsets.only(bottom: 15,right: 8,left: 8,top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            child:customIconNav(_navbarController.index==0?Iconsax.home_15:FontAwesomeIcons.user),
            onTap:(){
              _navbarController.next(0);
            },
          ),
          GestureDetector(
            child:customIconNav(_navbarController.index==1?Iconsax.send_21:FontAwesomeIcons.basketShopping),
            onTap:(){
              _navbarController.next(1);
            },
          ),
          GestureDetector(
            child:customIconNavHome(_navbarController.index==2?FontAwesomeIcons.circle
                :FontAwesomeIcons.circleDollarToSlot),
            onTap:(){
              _navbarController.next(2);
            },
          ),
          GestureDetector(
            child: customIconNav(_navbarController.index==3?Iconsax.direct5:FontAwesomeIcons.house),
            onTap:(){
              _navbarController.next(3);
            },
          ),
        ],
      ),
    ));
  }
}
