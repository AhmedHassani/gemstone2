import 'package:flutter/material.dart';
import 'package:gemstone2/ui/signin.dart';

import '../color.dart';
import 'mappage.dart';
import 'otp.dart';
class signuppage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return _signuppagestate();
  }
}

class _signuppagestate extends State<signuppage>{
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  late TextEditingController _textFieldController_phone;
  late TextEditingController _textFieldController_password;
  bool iseye=false;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: screensize.height*0.03,bottom: 0),
            child: Center(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text('إنشاء حساب',
                  style: TextStyle(
                    color:Thintextcolor,
                    fontSize: 28,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Image.asset('images/logo-png 3.png',
            width: 300,
            height: 200,
          ),
          Stack(
            children: [
              Container(

                height: screensize.height*0.67,
                width: screensize.width*0.99,
                margin: EdgeInsets.only(
                    left: screensize.width*0.04,
                    right: screensize.width*0.04
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Subthintextcolor),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child:  Form(
                  child:Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 5),
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 30),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text('رقم الهاتف',
                              style: TextStyle(
                                color:Thintextcolor,
                                fontSize: 16,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10,left: 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: borders,
                                width: 3
                              )
                          ),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: new TextFormField(
                              textDirection: TextDirection.rtl,
                              textInputAction: TextInputAction.next,
                              style:  TextStyle(
                                color:borders,
                                fontSize: 18,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.right,
                              keyboardType: TextInputType.name,
                              onSaved: (input) => _textFieldController_phone.text = input!,
                              validator: (input) => input!.isEmpty ? "لا يوحد رقم" : null,
                              decoration: new InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: textfield)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: textfield)),
                              ),
                            ),
                          ),
                        ),
                        //this is com fiedled
                        Container(
                          padding: EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 5),
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 30),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text('الاسم',
                              style: TextStyle(
                                color:Thintextcolor,
                                fontSize: 16,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10,left: 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: borders,
                                  width: 3
                              )
                          ),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: new TextFormField(
                              textAlign: TextAlign.right,
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
                              validator: (input) => input!.isEmpty ? "الاسم غير صحيح " : null,
                              decoration: new InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: textfield)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: textfield)),
                              ),
                            ),
                          ),
                        ),
                        //end comp fieled

                        //this is com fiedled 2
                        Container(
                          padding: EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 5),
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 30),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text('البلد',
                              style: TextStyle(
                                color:Thintextcolor,
                                fontSize: 16,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10,left: 10),
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
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: textfield)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: textfield)),
                              ),
                            ),
                          ),
                        ),
                        //end comp fieled
                        //this is com fiedled
                        Container(
                          padding: EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 5),
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 30),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text('المحافظة',
                              style: TextStyle(
                                color:Thintextcolor,
                                fontSize: 16,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 5,left: 5),
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
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: textfield)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: textfield)),
                              ),
                            ),
                          ),
                        ),
                        //end comp fieled

                        //this is com fiedled
                    Container(
                      width: screensize.width*0.99,
                      margin: EdgeInsets.only(
                          left: screensize.width*0.04,
                          right: screensize.width*0.04
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(right: 5,left: 5),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder:  (context) =>Mappage()));
                                },
                                child: Text('استخدام الخريطة',
                                  style: TextStyle(
                                    color:map,
                                    fontSize: 16,
                                    fontFamily: "Cairo",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10,bottom: 10,right: 5,left: 5),
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(right: 5,left: 5),
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Text('العنوان',
                                style: TextStyle(
                                  color:Thintextcolor,
                                  fontSize: 16,
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                        Container(
                          margin: EdgeInsets.only(right: 10,left: 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: borders,
                                width: 3,
                                //strokeAlign: StrokeAlign.inside,
                              )
                          ),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: new TextFormField(
                              textAlign: TextAlign.right,
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
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: textfield)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: textfield)),
                              ),
                            ),
                          ),
                        ),
                        //end comp fieled
                      ]
                  ) ,

                ),
              ),
              Container(
                width: screensize.width*0.99999,
                height: 50,
                margin: EdgeInsets.only(
                    top:  screensize.height*0.64,
                    right: screensize.width*0.15,
                    left:screensize.width*0.15),
                child: ElevatedButton(style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Butn),
                  elevation:MaterialStateProperty.all(12),
                  padding:MaterialStateProperty.all(EdgeInsets.all(5)),
                ), onPressed:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder:  (context) =>  Otp()));
                }, child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text('إنشاء الحساب',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 16,
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )),
              ),
            ],
          ),

          SizedBox(height: 10,),
          Container(
            margin:EdgeInsets.only(left: screensize.width*0.20) ,
            padding: EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 5),
            child: Center(
                child: Row(
                  children: [
                   InkWell(
                     onTap: (){
                       Navigator.push(context,
                           MaterialPageRoute(builder:  (context) =>Signin()));
                     },
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text('قم بتسجيل الدخول',
                          style: TextStyle(
                            color:Thintextcolor,
                            fontSize: 13,
                            fontFamily: "Cairo",
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text('هل تملك حساب؟  ',
                        style: TextStyle(
                          color:Subthintextcolor,
                          fontSize: 13,
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
  Future<bool> validateAndSave() async {
    await Future.delayed(Duration(seconds: 0));

    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
  void clearForm() {
    globalFormKey.currentState?.reset();
    _textFieldController_password.clear();
  }
}