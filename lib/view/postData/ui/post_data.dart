import 'package:flutter/material.dart';

import '../../../constance/topics.dart';


class PostData extends StatelessWidget {
  const PostData({Key? key,this.index}) : super(key: key);
  final index ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Stack(
        children: [

          Container(
            height: 450,
            width: double.maxFinite,
            child: Image.asset("images/${widgetTopTopics[index]['img']}",fit: BoxFit.cover,),
          ),
          Container(
            height: 450,
            width: double.maxFinite,
            color: Colors.black.withOpacity(0.5),
          ),

          Column(
            children: [
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(

                  width: double.maxFinite,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back,color: Colors.white,)),
                      Icon(Icons.bookmark_outline,color: Colors.white,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(

                  width: double.maxFinite,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      ImageIcon(
                        AssetImage("images/share.png"),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(

                  width: double.maxFinite,

                  child: Row(

                    children: [

                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff475ad7),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("us Election",
                            style: TextStyle(
                              color: Colors.white,

                            ),),
                          ))
                    ],
                  ),
                ),
              ),
             ///------------- title -------
             SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(

                  width: double.maxFinite,

                  child: Row(

                    children: [

                        Container(
                          width: 300,
                          child: Text("${widgetTopTopics[index]['title']}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold

                                ),),
                        ),

                    ],
                  ),
                ),
              ),
              ///------------- title -------
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(

                  width: double.maxFinite,

                  child: Row(

                    children: [

                      CircleAvatar(
                        radius: 30,
                        foregroundImage: AssetImage("images/${widgetTopTopics[index]['profile']}"),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [

                          Container(

                            child: Text("${widgetTopTopics[index]['name']}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold

                              ),),
                          ),

                          Container(

                            child: Text("Designer",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold

                              ),),
                          ),


                        ],
                      ),

                    ],
                  ),
                ),
              ),

              SizedBox(height: 20,),
              Container(
                // height: 400,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color:   Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Results",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),),
                      SizedBox(height: 20,),
                      Text("${widgetTopTopics[index]['text']}",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff999db5)
                      ),),
                    ],
                  ),
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
