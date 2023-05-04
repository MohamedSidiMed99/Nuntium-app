import 'package:flutter/material.dart';

import '../../../../constance/topics.dart';



class SelectedHome extends StatelessWidget {
  const SelectedHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,

          itemCount: widgetTopTopics.length,
          itemBuilder: (ctx,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: (){

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                      border: Border(
                        top: BorderSide(color: Colors.grey.shade200),
                        bottom: BorderSide(color: Colors.grey.shade200),
                        left: BorderSide(color: Colors.grey.shade200),
                        right: BorderSide(color: Colors.grey.shade200),
                      )
                    ),
                    child: Column(

                      children: [
                        ///-------------Image ------------
                        Container(
                            height: 250,
                            width: double.maxFinite,
                            child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset("images/${widgetTopTopics[index]['img']}",fit: BoxFit.cover,)),
                          ),


                        ///------------- title type ------------
                        Container(

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              alignment: Alignment.bottomLeft,
                              child:  Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [

                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 250,
                                            child: Text("${widgetTopTopics[index]['title']}",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xff616471),
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 1.0,

                                              ),),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(Icons.bookmark_outline,color: Colors.grey,),
                                  ],
                                ),
                              )


                          ),

                      ],
                    ),
                  )
              ),
            );
          });
  }
}
