import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nuntium/view/auth/welcome/welcome.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Onboarder extends StatefulWidget {
  const Onboarder({Key? key}) : super(key: key);

  @override
  State<Onboarder> createState() => _OnboarderState();
}

class _OnboarderState extends State<Onboarder> {

  CarouselController buttonCarouselController = CarouselController();

  List imgList = [
    "car.jpg",
    "lada.jpg",
    "3.jpg"
  ];
  int current = 1;

  carouselchange(int val){
     print(val);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body:  Column(
          children: [
            SizedBox(height: 120,),

            Expanded(child: Column(children: [
              CarouselSlider(
                items:imgList.map((e){
                  int index = imgList.indexOf(e);
                  return  Container(

                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/${imgList[index]}",fit: BoxFit.cover,)),
                  );
                }).toList(),


                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 1.1,
                  initialPage: 2,
                  onPageChanged: (index,reason){

                    setState(() {
                      current = index;
                    });
                  },
                ),
              ),
              ///--------------carousel ------------
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.map((e) {
                  int index = imgList.indexOf(e);
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 12,
                      width:current == index ?30: 12,
                      decoration: BoxDecoration(
                          color: current == index ? Color(0xff475ad7) : Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(50)
                      ),

                    ),
                  );
                }).toList(),),

            ],)),
            ///------------------button---------------
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("First to know",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  ),),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("All news in one place, be the \n first to know last news",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff999db5)
                  ),),
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: InkWell(
                onTap: (){
                  print("next");
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>Welcome()));
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
            ),
            SizedBox(height: 20,),
          ],
        ),


    );
  }


}
