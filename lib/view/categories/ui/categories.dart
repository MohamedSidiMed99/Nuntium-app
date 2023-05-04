import 'package:flutter/material.dart';

import '../../../constance/topics.dart';



class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Color(0xffffffff),
      body:  Padding(
        padding: const EdgeInsets.all(18.0),
        child:  CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60,),
                  ///--------------------welcom --------------------

                  Text("Categories",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                    ),),
                  SizedBox(height: 20,),
                  Text("Thousands of articles in each category.",

                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff999db5)
                    ),),
                  SizedBox(height: 20,),

                  ///--------------------Selected topic-------------------

                  Container(
                    height: MediaQuery.of(context).size.height/1.4,
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 80
                        ),

                        itemCount: categories.length,
                        itemBuilder: (ctx,index){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                categories[index]["color"] = true;
                              });
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    color: categories[index]['color']?Color(0xff475ad7) :Colors.grey.shade200 ,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("${categories[index]['topic']}",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color:categories[index]['color']?Colors.white : Color(0xff999db5),
                                          fontWeight: FontWeight.w600
                                      ),),
                                  ],
                                ))),
                          );
                        }
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
