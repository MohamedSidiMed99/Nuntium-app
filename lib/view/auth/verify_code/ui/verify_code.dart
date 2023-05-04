import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../create_newpass/ui/create_newpass.dart';


class VerifyCode extends StatefulWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {

  TextEditingController pin1 = TextEditingController();
  TextEditingController pin2 = TextEditingController();
  TextEditingController pin3 = TextEditingController();
  TextEditingController pin4 = TextEditingController();
  TextEditingController pin5 = TextEditingController();
  TextEditingController pin6 = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body:  Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 60,),

            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///--------------------welcom --------------------

                    Text("Verification Code",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                      ),),
                    SizedBox(height: 10,),
                    Text("You need to enter 4-digit code we sent to your email adress.",

                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff999db5)
                      ),),
                    SizedBox(height: 30,),

                    ///--------------------input code  --------------------

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 68,
                              width: 50,
                              child: TextFormField(

                                controller: pin1,
                                onChanged: (val){
                                  if(val.length == 1){
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                onSaved: (pin1){
                                  print(pin1);
                                },
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                decoration: InputDecoration(
                                  filled: true,
                                    fillColor: Colors.grey.shade200,
                                    hintText: "-",
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xff0065ff)
                                        )
                                    )
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 68,
                              width: 50,
                              child: TextFormField(
                                controller: pin2,
                                onChanged: (val){
                                  if(val.length == 1){
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                onSaved: (pin2){
                                  print(pin2);
                                },
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],

                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey.shade200,
                                    hintText: "-",
                                    hintStyle: TextStyle(
                                      color: Colors.blue
                                    ),

                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xff0065ff)
                                        )
                                    )
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 68,
                              width: 50,
                              child: TextFormField(
                                controller: pin3,
                                onChanged: (val){
                                  if(val.length == 1){
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                onSaved: (pin3){
                                  print(pin3);
                                },
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey.shade200,
                                    hintText: "-",
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xff0065ff)
                                        )
                                    )
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 68,
                              width: 50,
                              child: TextFormField(
                                controller: pin4,
                                onChanged: (val){
                                  if(val.length == 1){
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                onSaved: (pin4){
                                  print(pin4);
                                },
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey.shade200,
                                    hintText: "-",
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xff0065ff)
                                        )
                                    )
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),

                    ///--------------------Button--------------------

                    InkWell(
                      onTap: (){

                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>CreateNewPass()));
                      },
                      child: Container(
                        height: 55,
                        width: double.maxFinite,

                        decoration: BoxDecoration(
                            color:  Color(0xff475ad7),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        alignment: Alignment.center,
                        child:Text("Confirm",style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),),
                      ),
                    ),


                  ],
                )),

            ///-------------------------------------
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (builder)=>SignUp()));
                  },
                  child: Row(
                    children: [
                      Text("Didn't receive an email? ? ",

                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color:Color(0xff999db5)

                        ),),

                      Text("Send again",

                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color:Colors.black

                        ),),
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),


    );
  }
}
