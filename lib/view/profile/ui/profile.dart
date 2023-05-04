import 'package:flutter/material.dart';
import 'package:nuntium/view/auth/login/ui/login.dart';
import 'package:nuntium/view/profile/ui/parts/change_pass.dart';
import 'package:nuntium/view/profile/ui/parts/languages.dart';
import 'package:nuntium/view/profile/ui/parts/terms.dart';



class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60,),
        ///-------------------- --------------------

        Padding(
          padding: const EdgeInsets.only(right: 15,bottom: 8.0,top: 8.0,left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Profile",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                ),),
              SizedBox(height: 30,),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    foregroundImage: AssetImage("images/mft.JPG"),
                  ),

                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(

                        child: Text("Moftah med",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold

                          ),),
                      ),

                      SizedBox(height: 10,),
                      Container(

                        child: Text("Moftah@gmail.com",
                          style: TextStyle(
                              color:  Color(0xff999db5),
                              fontSize: 16,
                              fontWeight: FontWeight.bold

                          ),),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30,),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text("Notification",
                          style: TextStyle(
                              color:  Color(0xff999db5),
                              fontSize: 18,
                              fontWeight: FontWeight.bold

                          ),),
                        Icon(Icons.toggle_on,color: Color(0xff475ad7),size: 50,)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>Languages()));
                  },
                  child: Container(
                    height: 60,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Language",
                            style: TextStyle(
                                color:  Color(0xff999db5),
                                fontSize: 18,
                                fontWeight: FontWeight.bold

                            ),),
                          Icon(Icons.arrow_forward_ios,color: Color(0xff999db5),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>ChangePassword()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Change Password",
                            style: TextStyle(
                                color:  Color(0xff999db5),
                                fontSize: 18,
                                fontWeight: FontWeight.bold

                            ),),
                          Icon(Icons.arrow_forward_ios,color:  Color(0xff999db5),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){

                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Privacy",
                            style: TextStyle(
                                color:  Color(0xff999db5),
                                fontSize: 18,
                                fontWeight: FontWeight.bold

                            ),),
                          Icon(Icons.arrow_forward_ios,color:  Color(0xff999db5),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>Terms()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Terms & Conditions",
                            style: TextStyle(
                                color:  Color(0xff999db5),
                                fontSize: 18,
                                fontWeight: FontWeight.bold

                            ),),
                          Icon(Icons.arrow_forward_ios,color:  Color(0xff999db5),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>Login()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Sign Out",
                            style: TextStyle(
                                color:  Color(0xff999db5),
                                fontSize: 18,
                                fontWeight: FontWeight.bold

                            ),),
                          Icon(Icons.login,color:  Color(0xff999db5),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ],
    );
  }
}
