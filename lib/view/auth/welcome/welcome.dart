import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nuntium/view/auth/login/ui/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  CarouselController buttonCarouselController = CarouselController();






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
            Expanded(child: Column(
              children: [
                 Container(
                   width: double.maxFinite,
                    height: 400,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("images/welcome.jpg",fit: BoxFit.cover,)),
                  ),

              ],
            )),
            SizedBox(height: 50,),
            ///------------------button----------------
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Nuntium",
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
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: InkWell(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>Login()));
                },
                child: Container(
                  height: 55,
                  width: double.maxFinite,

                  decoration: BoxDecoration(
                      color:  Color(0xff475ad7),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  alignment: Alignment.center,
                  child:Text("Get Started",style: TextStyle(
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
