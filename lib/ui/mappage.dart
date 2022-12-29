import 'package:flutter/material.dart';

import '../color.dart';
class Mappage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Mappagestate();
  }
}
class _Mappagestate extends State<Mappage>{
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  late TextEditingController _textFieldController_phone;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
   return Scaffold(
     body: Container(
       // width: screensize.width,
       // height: screensize.height,
       child: Stack(
         children: [
           Image.asset('images/map.png',
           ),
          Row(
            children: [
              Container(
                width: screensize.width*0.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                   border: Border.all(
                     color: borders
                   ),
                ),
                margin: EdgeInsets.only(top: screensize.height*0.3,
                    // right:screensize.width*0.2,
                    // left: screensize.width*0.2
                ),
                child: Row(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Butn,
                            border: Border.all(color: Butn)
                            ,shape: BoxShape.rectangle,
                          ),
                          child: Icon(Icons.arrow_back,
                            size: 22,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: screensize.height*0.05),
                          child:     Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: borders,
                                  width: 3,
                                )
                            ),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: new TextFormField(
                                textAlign: TextAlign.right,
                                obscureText: true,
                                textDirection: TextDirection.rtl,
                                textInputAction: TextInputAction.next,
                                style:  TextStyle(
                                  color:borders,
                                  fontSize: 18,
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.w400,
                                ),
                                keyboardType: TextInputType.name,
                                onSaved: (input) => _textFieldController_phone.text = input!,
                                validator: (input) => input!.isEmpty ? "لا يوحد كلمة المرور" : null,
                                decoration: new InputDecoration(
                                    labelText: 'كلمة المرور',
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: textfield)),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: textfield)),
                                    suffixIcon:Icon(Icons.search)

                                    )
                                ),
                              ),
                            ),
                          ),
                      ],

                ),
              ),
            ],
          )
         ],
       ),
     ),
   );
  }
  
}