import 'package:flutter/material.dart';

import '../../home/ui/widget/widget_bottom_topic.dart';



class Bookmarks extends StatefulWidget {
  const Bookmarks({Key? key}) : super(key: key);

  @override
  State<Bookmarks> createState() => _BookmarksState();
}

class _BookmarksState extends State<Bookmarks> {
  @override
  Widget build(BuildContext context) {
    return  ListView(
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

                  Text("Bookmarks",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                    ),),
                  SizedBox(height: 10,),
                  Text("Saved articles to the library",

                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff999db5)
                    ),),
                  SizedBox(height: 30,),


                ],
              ),
            ),




             Column(
              children: [


                ///--------------------WidgetBottomTopics--------------------

                SizedBox(height: 10,),
                WidgetBottomTopics()

              ],
            )


          ],
        ),

      ],
    );

  }
}
