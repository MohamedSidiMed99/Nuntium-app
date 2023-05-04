import 'package:flutter/material.dart';

import '../../../../../constance/topics.dart';


class WidgetTopTopics extends StatelessWidget {
  const WidgetTopTopics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: widgetTopTopics.length,
          itemBuilder: (ctx,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  
                },
                child: Stack(
                  children: [
                    ///-------------Image ------------
                    Container(
                      height: 280,
                      width: 260,

                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("images/${widgetTopTopics[index]['img']}",fit: BoxFit.cover,)),
                    ),
                    ///-------------color------------
                    Container(
                      height: 280,
                      width: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black.withOpacity(0.3),
                      ),

                    ),

                    ///-------------Icon ------------
                    Container(
                      height: 280,
                      width: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                          right: 20.0,
                        ),
                        child: Icon(Icons.bookmark_outline,color: Colors.white,),
                      ),

                    ),
                    ///------------- title type ------------
                    Container(
                      height: 280,
                      width: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20.0,
                          left: 20.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${widgetTopTopics[index]['topic']}",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontWeight: FontWeight.w500,
                            ),),
                            SizedBox(height: 10,),
                            Text("${widgetTopTopics[index]['title']}",
                              style: TextStyle(
                                  color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,

                              ),)
                          ],
                        )
                      ),

                    ),
                  ],
                )
              ),
            );
          }),
    );
  }
}
