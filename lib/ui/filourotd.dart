import 'package:flutter/material.dart';
import 'package:gemstone2/ui/secpassword.dart';
import '../color.dart';

class fiulourOtp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _fiulourOtpstate();
  }
}
class _fiulourOtpstate extends State<fiulourOtp>{
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;

    /// Form ====================================================
    GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
    late TextEditingController _textFieldController_first;
    late TextEditingController _textFieldController_second;
    late TextEditingController _textFieldController_third;
    late TextEditingController _textFieldController_fours;
    @override
    void initState() {
      super.initState();
      _textFieldController_first = TextEditingController();
      _textFieldController_second = TextEditingController();
      _textFieldController_third = TextEditingController();
      _textFieldController_fours = TextEditingController();

    }
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white
            ),
            margin: EdgeInsets.only(top: screensize.height*0.03,bottom: 0),
            child: Center(
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
                SizedBox(width: screensize.width*0.25,),
                Container(
                  margin: EdgeInsets.only(right: screensize.width*0.3),
                  child:
                    Center(
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
                    )),
                  ],
                )
            ),
          ),
          Image.asset('images/logo-png 3.png',
            width: 300,
            height: 200,
          ),
          Stack(
            children: [
              Container(
                height: screensize.height*0.38,
                width: screensize.width*0.99,
                margin: EdgeInsets.only(
                    left: screensize.width*0.04,
                    right: screensize.width*0.04
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Subthintextcolor),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child:  Form(child: Column(
                  children: [
                    Center(
                        child:  Column(

                          children: [
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: Text('لقد قمنا بإرسال رسالة إلى الرقم xxxxxxx89',
                                style: TextStyle(
                                  color:Subthintextcolor,
                                  fontSize: 18,
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Directionality(
                              textDirection: TextDirection.rtl,
                              child: Text('يرجى إرسال الرمز المرفق ضمن الرسالة',
                                style: TextStyle(
                                  color:Subthintextcolor,
                                  fontSize: 18,
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: 25,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 45,
                                  height: 49,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle
                                    ,color: otpbox,
                                    border: Border.all(
                                    ),
                                  ),
                                  child:Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: borders,
                                         // strokeAlign: StrokeAlign.inside,
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
                                        onSaved: (input) =>
                                        _textFieldController_first.text = input!,
                                        validator: (input) =>
                                        input!.isEmpty ? "لا يوحد كلمة المرور" : null,
                                        decoration: new InputDecoration(
                                          hintText: '1',
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: textfield)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: textfield)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                Container(
                                  width: 45,
                                  height: 49,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle
                                    ,color: otpbox,
                                    border: Border.all(
                                    ),
                                  ),
                                  child:Container(
                                    decoration: BoxDecoration(
                                        color: otpbox,
                                        border: Border.all(
                                          color: borders,
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
                                        onSaved: (input) =>
                                        _textFieldController_first.text = input!,
                                        validator: (input) =>
                                        input!.isEmpty ? "لا يوحد كلمة المرور" : null,
                                        decoration: new InputDecoration(
                                          hintText: '1',
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: textfield)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: textfield)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 45,
                                  height: 49,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle
                                    ,color: otpbox,
                                    border: Border.all(
                                        color: otpbox
                                    ),
                                  ),
                                  child:Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: borders,
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
                                        onSaved: (input) =>
                                        _textFieldController_first.text = input!,
                                        validator: (input) =>
                                        input!.isEmpty ? "لا يوحد كلمة المرور" : null,
                                        decoration: new InputDecoration(
                                          hintText: '1',
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: textfield)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: textfield)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                Container(
                                  width: 45,
                                  height: 49,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle
                                    ,
                                    border: Border.all(
                                        color: otpbox
                                    ),
                                  ),
                                  child:Container(
                                    decoration: BoxDecoration(
                                        color: otpbox,
                                        border: Border.all(
                                          color: borders,
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
                                        onSaved: (input) =>
                                        _textFieldController_first.text = input!,
                                        validator: (input) =>
                                        input!.isEmpty ? "لا يوحد كلمة المرور" : null,
                                        decoration: new InputDecoration(
                                          hintText: '1',
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: textfield)),
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: textfield)),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 25,),
                            Container(
                              padding: EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 5),
                              child: Center(
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text('الرمز المدخل خاطئ، يرجى إعادة المحاولة',
                                    style: TextStyle(
                                      color:otbfiedl,
                                      fontSize: 15,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                    )
                  ],
                ),
                ),
              ),
              Container(
                width: screensize.width*0.99999,
                height: 50,
                decoration: BoxDecoration(
                    color: Butn
                ),
                margin: EdgeInsets.only(
                    top:  screensize.height*0.35,
                    right: screensize.width*0.15,
                    left:screensize.width*0.15),
                child: ElevatedButton(style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Butn),
                  elevation:MaterialStateProperty.all(12),
                  padding:MaterialStateProperty.all(EdgeInsets.all(5)),
                ), onPressed:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder:  (context) =>secpassword()));
                }, child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text('المتابعة',
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
        ],
      ),
    );
  }

}