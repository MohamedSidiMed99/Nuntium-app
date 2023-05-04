import 'package:flutter/material.dart';
import 'package:nuntium/constance/topics.dart';
import 'package:nuntium/view/home/ui/select_home/selected_home.dart';
import 'package:nuntium/view/home/ui/widget/widget_bottom_topic.dart';
import 'package:nuntium/view/home/ui/widget/widget_top_topics.dart';




class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController search = TextEditingController();

  int pageindex = 0;

  @override
  void dispose() {

    setState(() {

      pageindex = 0;
    });
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return   ListView(
        physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
           Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  ///-------------------- --------------------

                  Padding(
                    padding: const EdgeInsets.only(right: 15,bottom: 8.0,top: 8.0,left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text("Browse",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                          ),),
                        SizedBox(height: 10,),
                        Text("Discover things of this world",

                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff999db5)
                          ),),
                        SizedBox(height: 30,),


                        ///--------------------search --------------------

                        TextFormField(
                          onChanged: (val){


                          },

                          controller: search,

                          decoration: InputDecoration(

                            fillColor: Colors.grey.shade200,
                            filled: true,
                            focusColor: Colors.red,
                            prefixIcon: Icon(Icons.search,color: Color(0xff999db5),),
                            hintText: "Search",
                            hintStyle: TextStyle(
                                color:Color(0xff999db5)
                            ),
                            suffixIcon: Icon(Icons.mic_none_outlined,color: Color(0xff999db5),),

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  ///--------------------topics --------------------

                  Container(
                    height: 50,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: topicsHome.length,
                        itemBuilder: (ctx,index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: (){
                                selectTypes(index);
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: topicsHome[index]['color'] ? Color(0xff475ad7) :Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15,top: 8.0,bottom: 8.0),
                                child: Text("${topicsHome[index]['topic']}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                    color: topicsHome[index]['color'] ? Colors.white :Color(0xff999db5)
                                ),),
                              )),
                            ),
                          );
                        }),
                  ),


                  pageindex == 0 ? Column(
                    children: [
                      ///--------------------WidgetTopTopics--------------------
                      WidgetTopTopics(),

                      ///--------------------WidgetBottomTopics--------------------

                      SizedBox(height: 30,),
                       Padding(
                         padding: const EdgeInsets.only(left:10,right: 10),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Recommended for you",

                               style: TextStyle(
                                   fontSize: 20,
                                   color: Colors.black,
                                 fontWeight: FontWeight.bold
                               ),),
                             Text("See All",

                               style: TextStyle(
                                   fontSize: 18,
                                   color: Color(0xff999db5)
                               ),),

                           ],
                         ),
                       ),
                      SizedBox(height: 10,),
                      WidgetBottomTopics()

                    ],
                  ) :SelectedHome(),


                ],
              ),

          ],
        );


  }

  selectTypes(index){


      for(int i = 0 ; i < topicsHome.length ; i++) {
          setState(() {
            topicsHome[i]['color'] = false;
          });

      }

      setState(() {
        pageindex = index+1;

        topicsHome[index]['color'] = true;
      });

  }
}
