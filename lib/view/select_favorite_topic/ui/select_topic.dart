import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nuntium/view/auth/forget_pass/ui/forget_pass.dart';
import 'package:nuntium/view/auth/login/ui/login.dart';
import 'package:nuntium/view/home/ui/home.dart';

import '../../../bottomNavBar.dart';
import '../../../constance/topics.dart';


class SelectFavoritTopic extends StatefulWidget {
  const SelectFavoritTopic({Key? key}) : super(key: key);

  @override
  State<SelectFavoritTopic> createState() => _SelectFavoritTopicState();
}

class _SelectFavoritTopicState extends State<SelectFavoritTopic> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body:  Padding(
        padding: const EdgeInsets.all(18.0),
        child:  CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60,),
                  ///--------------------welcom --------------------

                  Text("Select your favorite topics",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                    ),),
                  SizedBox(height: 20,),
                  Text("Select some of your favorite topics to let us suggest better news for you.",

                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff999db5)
                    ),),
                  SizedBox(height: 30,),

                  ///--------------------Selected topic-------------------

                  Container(
                    height: MediaQuery.of(context).size.height/1.6,
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 80
                        ),

                        itemCount: topics.length,
                        itemBuilder: (ctx,index){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                topics[index]["color"] = true;
                              });
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  color: topics[index]['color']?Color(0xff475ad7) :Colors.grey.shade200 ,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("${topics[index]['topic']}",
                                    style: TextStyle(
                                      fontSize: 18,
                                        color:topics[index]['color']?Colors.white : Color(0xff999db5),
                                      fontWeight: FontWeight.w600
                                    ),),
                                  ],
                                ))),
                          );
                        }
                     ),
                  ),

                  ///--------------------Button--------------------

                  InkWell(
                    onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>BottomNavBar()));
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
              ),
            ),
          ],
        ),

      ),


    );
  }
}
