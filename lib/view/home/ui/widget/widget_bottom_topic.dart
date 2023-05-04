import 'package:flutter/material.dart';

import '../../../../../constance/topics.dart';
import '../../../postData/ui/post_data.dart';


class WidgetBottomTopics extends StatelessWidget {
  const WidgetBottomTopics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,

        itemCount: widgetTopTopics.length,
        itemBuilder: (ctx,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (builder)=>PostData(index: index,)));
                },
                child:  Row(

                  children: [
                    ///-------------Image ------------
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 100,
                        width: 100,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("images/${widgetTopTopics[index]['img']}",fit: BoxFit.cover,)),
                      ),
                    ),

                    ///------------- title type ------------
                    Expanded(
                      flex: 7,
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.bottomLeft,
                        child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${widgetTopTopics[index]['topic']}",
                                    style: TextStyle(
                                      color: Color(0xff999db5),
                                      fontWeight: FontWeight.w500,
                                    ),),
                                  SizedBox(height: 10,),
                                  Text("${widgetTopTopics[index]['title']}",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xff616471),
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.0,

                                    ),)
                                ],
                              ),
                        )


                      ),
                    ),
                  ],
                )
            ),
          );
        });
  }
}
