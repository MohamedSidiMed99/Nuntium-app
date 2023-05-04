import 'package:flutter/material.dart';
import 'package:nuntium/view/auth/forget_pass/ui/forget_pass.dart';
import 'package:nuntium/view/select_favorite_topic/ui/select_topic.dart';

import '../../signup/ui/signup.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  bool coloremail = false;
  bool colorpass = false;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body:   Padding(
              padding: const EdgeInsets.all(18.0),
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 60,),
                                ///--------------------welcom --------------------

                                Text("Welcome Back",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500
                                  ),),
                                SizedBox(height: 10,),
                                Text("I am happy to sae you again. You can continue where you left off by logging in",

                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff999db5)
                                  ),),
                                SizedBox(height: 30,),

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
                                  obscureText: visible == false ? true:false,
                                  controller: pass,
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey.shade200,
                                    filled: true,
                                    focusColor: Colors.red,
                                    prefixIcon: Icon(Icons.lock_outline,color: colorpass ? Color(0xff475ad7):Color(0xff999db5),),
                                    suffixIcon:  InkWell(
                                        onTap: (){
                                          setState(() {
                                            visible =!visible;
                                          });
                                        },
                                        child:colorpass? visible ==false?Icon(Icons.visibility_off,color: Color(0xff475ad7),):Icon(Icons.remove_red_eye,color: Color(0xff475ad7),): Container(width: 10,)) ,

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
                                ///--------------------forget password --------------------

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap:(){
                                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>ForgetPass()));
                                       },
                                      child: Text("Forget Password?",

                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff999db5)
                                        ),),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30,),
                                ///--------------------Button--------------------

                                InkWell(
                                  onTap: (){

                                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>SelectFavoritTopic()));
                                  },
                                  child: Container(
                                    height: 55,
                                    width: double.maxFinite,

                                    decoration: BoxDecoration(
                                        color:  Color(0xff475ad7),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    alignment: Alignment.center,
                                    child:Text("Sign In",style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white
                                    ),),
                                  ),
                                ),

                                SizedBox(height: 50,),
                                ///--------------------OR-------------------

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("or",

                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff999db5)
                                      ),),
                                  ],
                                ),
                                SizedBox(height: 50,),

                                ///--------------------google sign in Button--------------------

                                InkWell(
                                  onTap: (){

                                  },
                                  child: Container(
                                    height: 55,
                                    width: double.maxFinite,

                                    decoration: BoxDecoration(
                                        border: Border(
                                          left: BorderSide(color: Color(0xff999db5),),
                                          right: BorderSide(color:  Color(0xff999db5),),
                                          bottom: BorderSide(color: Color(0xff999db5),),
                                          top: BorderSide(color:  Color(0xff999db5),),
                                        ),
                                        color:  Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    alignment: Alignment.center,
                                    child:Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 10,),
                                        Expanded(
                                          child: Container(

                                            child: Image.asset("images/google.png"),
                                          ),
                                        ),

                                        Expanded(
                                          flex: 8,
                                          child:  Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("Sign In with Google",style: TextStyle(
                                                fontSize: 20,
                                                color: Color(0xff999db5),
                                              ),),
                                            ],
                                          ),
                                        ),

                                        Expanded(
                                          child: Container(

                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                ///--------------------facebook sign in Button--------------------

                                InkWell(
                                  onTap: (){

                                  },
                                  child: Container(
                                    height: 55,
                                    width: double.maxFinite,

                                    decoration: BoxDecoration(
                                        border: Border(
                                          left: BorderSide(color: Color(0xff999db5),),
                                          right: BorderSide(color:  Color(0xff999db5),),
                                          bottom: BorderSide(color: Color(0xff999db5),),
                                          top: BorderSide(color:  Color(0xff999db5),),
                                        ),
                                        color:  Color(0xffffffff),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    alignment: Alignment.center,
                                    child:Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 10,),
                                        Expanded(
                                          child: Container(

                                            child: Image.asset("images/facebook.png"),
                                          ),
                                        ),

                                        Expanded(
                                          flex: 8,
                                          child:  Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("Sign In with Facebook",style: TextStyle(
                                                fontSize: 20,
                                                color: Color(0xff999db5),
                                              ),),
                                            ],
                                          ),
                                        ),

                                        Expanded(
                                          child: Container(

                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 50,),

                                // Spacer(),
                                Expanded(child: Container()),
                                ///-------------------------------------

                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>SignUp()));
                                  },
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Don't have an account? ",

                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color:Color(0xff999db5)

                                        ),),

                                      Text("Sign Up",

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
