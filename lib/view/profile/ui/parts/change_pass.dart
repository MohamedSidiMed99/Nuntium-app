import 'package:flutter/material.dart';



class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController pass = TextEditingController();
  TextEditingController pass1 = TextEditingController();
  TextEditingController pass2 = TextEditingController();

  bool colorpass = false;
  bool colorpass1 = false;
  bool colorpass2 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 60,),
              Row(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back,color: Color(0xff999db5),)),

                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("Change Password",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold

                        ),),
                    ),
                  ),
                  SizedBox(width: 40,)

                ],
              ),
              SizedBox(height: 30,),


              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///--------------------welcom --------------------


                  SizedBox(height: 30,),
                  ///-------------------- current Pass  --------------------

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
                    controller:pass,

                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      focusColor: Colors.red,
                      prefixIcon: Icon(Icons.lock_outline,color: colorpass ? Color(0xff475ad7): Color(0xff999db5),),
                      hintText: "Current Password",

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
                  ///-------------------- Pass 1 --------------------
                  SizedBox(height: 20,),
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

                 //    Navigator.push(context, MaterialPageRoute(builder: (builder)=>VerifyCode()));
                    },
                    child: Container(
                      height: 55,
                      width: double.maxFinite,

                      decoration: BoxDecoration(
                          color:  Color(0xff475ad7),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      alignment: Alignment.center,
                      child:Text("Change Password",style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),),
                    ),
                  ),


                ],
              )




            ],
          ),
        ),
      ),

    );
  }
}
