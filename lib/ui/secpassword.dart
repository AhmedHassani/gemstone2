import 'package:flutter/material.dart';
import 'package:gemstone2/ui/signuppage.dart';



import '../color.dart';
class secpassword extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _secpasswordstate();
  }
}
final scaffoldKey = GlobalKey<ScaffoldState>();
class _secpasswordstate extends State<secpassword>{
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  late TextEditingController _textFieldController_phone;
  late TextEditingController _textFieldController_password;
  @override
  Widget build(BuildContext context) {
    var screensize=MediaQuery.of(context).size;

    /// Form ====================================================


    @override
    void initState() {
      super.initState();
      _textFieldController_phone = TextEditingController();
      _textFieldController_password = TextEditingController();

    }
    bool iseye=false;
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
                height: screensize.height*0.38,
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
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 30),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text('كلمة المرور',
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
                                  suffixIcon:Icon(Icons.phone,
                                    color: Thintextcolor,
                                  )
                              ),
                            ),
                          ),
                        ),


                        Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 30),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text('تأكيد كلمة المرور',
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
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: textfield)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: textfield)),
                                  suffixIcon: InkWell(
                                    child: iseye==true?Icon(Icons.remove_red_eye_rounded,
                                        color: Thintextcolor
                                    ):Image.asset("images/noteye.png"),
                                    onTap: (){
                                      setState(() {
                                        iseye=!iseye;
                                        print('iseye =====$iseye');
                                      });
                                    },
                                  )
                              ),
                            ),
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 5),
                          child: Center(
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Text('كلمات المرور غير متطابقة، يرجى إعادة المحاولة',
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

                      ]
                  ) ,

                ),
              ),
              Container(
                width: screensize.width*0.99999,
                height: 50,
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
                      MaterialPageRoute(builder:  (context) =>signuppage()));
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

          SizedBox(height: 100,),
          Container(
            margin:EdgeInsets.only(left: screensize.width*0.20) ,
            padding: EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 5),
            child: Center(
                child: Row(
                  children: [
                    InkWell(

                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:  (context) =>signuppage()));
                      },
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text('انشئ حسابك الآن',
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
                      child: Text('هل أنت مستخدم جديد؟ ',
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