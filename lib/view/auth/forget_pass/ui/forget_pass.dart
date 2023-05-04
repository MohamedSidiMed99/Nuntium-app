import 'package:flutter/material.dart';
import 'package:nuntium/view/auth/verify_code/ui/verify_code.dart';


class ForgetPass extends StatefulWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  TextEditingController email = TextEditingController();


  bool coloremail = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body:  Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(

          children: [

            SizedBox(height: 60,),

            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///--------------------welcom --------------------

                    Text("Forgot Password",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                      ),),
                    SizedBox(height: 10,),
                    Text("We need your email address so we can send you the password reset code.",

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

                    ///--------------------Button--------------------

                    InkWell(
                      onTap: (){

                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>VerifyCode()));
                      },
                      child: Container(
                        height: 55,
                        width: double.maxFinite,

                        decoration: BoxDecoration(
                            color:  Color(0xff475ad7),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        alignment: Alignment.center,
                        child:Text("Next",style: TextStyle(
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
                      Text("Remember the password? ",

                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color:Color(0xff999db5)

                        ),),

                      Text("Try again",

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
