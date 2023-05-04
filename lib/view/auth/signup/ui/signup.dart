import 'package:flutter/material.dart';
import 'package:nuntium/view/auth/forget_pass/ui/forget_pass.dart';
import 'package:nuntium/view/auth/login/ui/login.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController pass2 = TextEditingController();

  bool colorname = false;
  bool coloremail = false;
  bool colorpass = false;
  bool colorpass2 = false;
  bool visible = false;
  bool visible2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body:  Padding(
        padding: const EdgeInsets.all(18.0),
        child:    CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 60,),
                          ///--------------------welcom --------------------

                          Text("Welcome to Nuntium",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                            ),),
                          SizedBox(height: 10,),
                          Text("Hello, i guess you are new around here. You can start using application after sign up.",

                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff999db5)
                            ),),
                          SizedBox(height: 30,),
                          ///--------------------name --------------------

                          TextFormField(
                            onChanged: (val){
                            if(val.length == 0){
                              setState(() {
                                colorname = false;
                              });
                            }else {
                              setState(() {
                                colorname = true;
                              });
                            }

                            },

                            controller: name,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              focusColor: Colors.red,
                              prefixIcon: Icon(Icons.person_2_outlined,color: colorname ? Color(0xff475ad7): Color(0xff999db5),),
                              hintText: "Username",

                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:colorname  ?BorderSide(color: Color(0xff475ad7)) : BorderSide.none
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:colorname  ?BorderSide(color: Color(0xff475ad7)) : BorderSide.none
                              ),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:BorderSide(color: Color(0xff475ad7))
                              ),
                            ),
                          ),

                          SizedBox(height: 20,),
                          ///--------------------email --------------------

                          TextFormField(
                            onChanged: (val){

                              if(val.length == 0){
                                  setState(() {
                                    coloremail = false;
                                  });
                              }else {
                                setState(() {
                                  coloremail = true;
                                });
                              }

                            },

                            controller: email,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              focusColor: Colors.red,
                              prefixIcon: Icon(Icons.email_outlined,color: coloremail ? Color(0xff475ad7): Color(0xff999db5),),
                              hintText: "Email Adress",

                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:coloremail ?BorderSide(color: Color(0xff475ad7)) : BorderSide.none
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:coloremail ?BorderSide(color: Color(0xff475ad7)) : BorderSide.none
                              ),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:BorderSide(color: Color(0xff475ad7))
                              ),
                            ),
                          ),

                          SizedBox(height: 20,),
                          ///--------------------password --------------------

                          TextFormField(

                            onChanged: (val){

                            if(val.length == 0){
                              setState(() {
                                colorpass = false;
                              });
                            }else {
                              setState(() {
                                colorpass = true;
                              });
                            }

                            },
                            // obscureText: visible == false ? true:false,
                            controller: pass,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              focusColor: Colors.red,
                              prefixIcon: Icon(Icons.lock_outline,color: colorpass ? Color(0xff475ad7):Color(0xff999db5),),


                              hintText: "Password",

                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:colorpass ?BorderSide(color: Color(0xff475ad7)) : BorderSide.none
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:colorpass ?BorderSide(color: Color(0xff475ad7)) : BorderSide.none
                              ),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:BorderSide(color: Color(0xff475ad7))
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          ///--------------------password 2 --------------------

                          TextFormField(

                            onChanged: (val){


                              if(val.length == 0){
                                setState(() {
                                  colorpass2 = false;
                                });
                              }else {
                                setState(() {
                                  colorpass2 = true;
                                });
                              }

                            },
                            // obscureText: visible2 == false ? true:false,
                            controller: pass2,
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              focusColor: Colors.red,
                              prefixIcon: Icon(Icons.lock_outline,color: colorpass2 ? Color(0xff475ad7):Color(0xff999db5),),


                              hintText: "Repeat Password",

                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:colorpass2 ?BorderSide(color: Color(0xff475ad7)) : BorderSide.none
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:colorpass2 ?BorderSide(color: Color(0xff475ad7)) : BorderSide.none
                              ),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:BorderSide(color: Color(0xff475ad7))
                              ),

                            ),
                          ),
                          SizedBox(height: 20,),


                          ///--------------------Button--------------------

                          InkWell(
                            onTap: (){

                              Navigator.push(context, MaterialPageRoute(builder: (builder)=>SignUp()));
                            },
                            child: Container(
                              height: 55,
                              width: double.maxFinite,

                              decoration: BoxDecoration(
                                  color:  Color(0xff475ad7),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              child:Text("Sign Up",style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),),
                            ),
                          ),


                          SizedBox(height: 50,),
                          Spacer(),

                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>Login()));
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Already have an account? ",

                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color:Color(0xff999db5)

                                      ),),

                                    Text("Sign In",

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
            ),
          ],
        ),

      ),


    );
  }
}
