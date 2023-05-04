import 'package:flutter/material.dart';



class Languages extends StatefulWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {

  List lang = [
    {"lang":"English","select":false},
    {"lang":"Turkish","select":false},
    {"lang":"German","select":false},
    {"lang":"Spanish","select":false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                              child: Text("Language",
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


                  ListView.builder(
                    shrinkWrap: true,
                      itemCount: lang.length,
                      itemBuilder: (ctx,index){

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              for(int i = 0 ; i < lang.length ; i++){
                                setState(() {
                                  lang[i]['select'] = false;
                                });
                              }
                              setState(() {
                                lang[index]['select'] = true;
                              });
                            },
                            child: Container(
                              height: 60,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color:lang[index]['select']? Color(0xff475ad7): Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    Text("${lang[index]['lang']}",
                                      style: TextStyle(
                                          color: lang[index]['select'] ? Colors.white : Color(0xff999db5),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold

                                      ),),
                                    lang[index]['select']? Icon(Icons.check,color: Colors.white,): Container()
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      })




                ],
              ),
      ),

    );
  }
}
