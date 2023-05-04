import 'package:flutter/material.dart';
import 'package:nuntium/view/auth/verify_code/ui/verify_code.dart';


class CreateNewPass extends StatefulWidget {
  const CreateNewPass({Key? key}) : super(key: key);

  @override
  State<CreateNewPass> createState() => _CreateNewPassState();
}

class _CreateNewPassState extends State<CreateNewPass> {
  TextEditingController pass1 = TextEditingController();
  TextEditingController pass2 = TextEditingController();


  bool colorpass1 = false;
  bool colorpass2 = false;


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

                    Text("Create New Password",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                      ),),
                    SizedBox(height: 10,),
                    Text("You can create a new password, please don't forget it too.",

                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff999db5)
                      ),),
                    SizedBox(height: 30,),

                    ///-------------------- Pass 1 --------------------

                    TextFormField(
                      onChanged: (val){

                        if(val.length == 0){
                          setState(() {
                            colorpass1 = false;
                          });
                        }else {
                          setState(() {
                            colorpass1 = true;
                          });
                        }

                      },
                      controller:pass1,

                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        focusColor: Colors.red,
                        prefixIcon: Icon(Icons.lock_outline,color: colorpass1 ? Color(0xff475ad7): Color(0xff999db5),),
                        hintText: "New Password",

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:colorpass1 ?BorderSide(color: Color(0xff475ad7)) : BorderSide.none
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:colorpass1 ?BorderSide(color: Color(0xff475ad7)) : BorderSide.none
                        ),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:BorderSide(color: Color(0xff475ad7))
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),
                    ///-------------------- Pass 2 --------------------

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
                      controller:pass2,

                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        focusColor: Colors.red,
                        prefixIcon: Icon(Icons.lock_outline,color: colorpass2 ? Color(0xff475ad7): Color(0xff999db5),),
                        hintText: "Repeat New Password",

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
                    ///--------------------Button--------------------
                    SizedBox(height: 20,),
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
                        child:Text("Confirm",style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),),
                      ),
                    ),


                  ],
                )
            ),

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
