import 'package:flutter/material.dart';
import 'package:gemstone2/ui/signuppage.dart';
import 'package:google_fonts/google_fonts.dart';
import '../color.dart';
import 'homepages/mainhomepage.dart';

class Signin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Signinstate();
  }
}

final scaffoldKey = GlobalKey<ScaffoldState>();

class _Signinstate extends State<Signin> {
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  late TextEditingController _textFieldController_phone;
  late TextEditingController _textFieldController_password;

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    /// Form ====================================================

    @override
    void initState() {
      super.initState();
      _textFieldController_phone = TextEditingController();
      _textFieldController_password = TextEditingController();
    }
    bool iseye = false;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

      ),
      body: Column(
          children: [
            Center(
              child:Text(
                'تسجيل الدخول',
                style: GoogleFonts.cairo(
                  color: Thintextcolor,
                  fontSize:30,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Image.asset(
              'images/img.png',
              width:MediaQuery.of(context).size.width*0.44,
              height: MediaQuery.of(context).size.height*0.25,
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  height: screensize.height * 0.38,
                  width: screensize.width * 0.99,
                  margin: EdgeInsets.only(
                      left: screensize.width * 0.04,
                      right: screensize.width * 0.04
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromRGBO(244, 244, 244,1),
                         width: 2,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Form(
                    child: Column(children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, right: 12, left: 5
                        ),
                        alignment: Alignment.topRight,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(
                            'رقم الهاتف',
                            style: GoogleFonts.cairo(
                              color: Thintextcolor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      TextFormField(
                        textAlign: TextAlign.right,
                        obscureText: true,

                        textDirection: TextDirection.rtl,
                        textInputAction: TextInputAction.next,
                        style: GoogleFonts.cairo(
                          color: borders,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        keyboardType: TextInputType.name,
                        onSaved: (input) =>
                        _textFieldController_phone.text = input!,
                        validator: (input) =>
                        input!.isEmpty ? "لا يوحد كلمة المرور" : null,
                        decoration: InputDecoration(
                            hintText:'كلمة المرور' ,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(244, 244, 244,1),
                                  width: 2,
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(244, 244, 244,1),
                                  width: 2,
                                )
                            ),
                            prefixIcon:Icon(
                              Icons.vpn_key_outlined,
                              color: Thintextcolor,
                            )
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, right: 12, left: 5
                        ),
                        alignment: Alignment.topRight,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(
                            'كلمة المرور',
                            style: GoogleFonts.cairo(
                              color: Thintextcolor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      TextFormField(
                        textAlign: TextAlign.right,
                        obscureText: true,
                        textDirection: TextDirection.rtl,
                        textInputAction: TextInputAction.next,
                        style: GoogleFonts.cairo(
                          color: borders,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        keyboardType: TextInputType.name,
                        onSaved: (input) =>
                        _textFieldController_phone.text = input!,
                        validator: (input) =>
                        input!.isEmpty ? "لا يوحد كلمة المرور" : null,
                        decoration: InputDecoration(
                            hintText:'كلمة المرور' ,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(244, 244, 244,1),
                                  width: 2,
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(244, 244, 244,1),
                                  width: 2,
                                )
                            ),
                            prefixIcon:Icon(
                              Icons.phone,
                              color: Thintextcolor,
                            )
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 5),
                        width: screensize.width * 0.99,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(right: 30),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text(
                                  'نسيت كلمة المرور؟',
                                  style: GoogleFonts.cairo(
                                    color: Thintextcolor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(right: 30),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text(
                                  'تذكر كلمة المرور',
                                  style: GoogleFonts.cairo(
                                    color: Thintextcolor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      )
                    ]),
                  ),
                ),
                Container(
                  width: screensize.width * 0.99999,
                  height: 50,
                  margin: EdgeInsets.only(
                      top: screensize.height * 0.36,
                      right: screensize.width * 0.15,
                      left: screensize.width * 0.15),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Butn),
                        elevation: MaterialStateProperty.all(12),
                        padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mainHomePage()));
                      },
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            color: Colors.white,
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
      )
    );
  }


  /*


   */

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
