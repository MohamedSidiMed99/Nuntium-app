import 'package:flutter/material.dart';



class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {


  String terms = "Lorem ipsum dolor sit amet, consectetur"
  "adipiscing elit, sed do eiusmod tempor"
  "incididunt ut labore et dolore magna aliqua."
  "Ut enim ad minim veniam, quis nostrud"
  "exercitation ullamco laboris nisi ut aliquip ex"
  "ea commodo consequat. Duis aute irure"
  "dolor in reprehenderit in voluptate velit esse"
  "cillum dolore eu fugiat nulla pariatur.\n"
  "Excepteur sint occaecat cupidatat non"
  "proident, sunt in culpa qui officia deserunt"
  "mollit anim id est laborum.\n"
  "Sed ut perspiciatis unde omnis iste natus"
  "error sit voluptatem accusantium"
  "doloremque laudantium, totam rem aperiam,"
  "eaque ipsa quae ab illo inventore veritatis et"
  "quasi architecto beatae vitae dicta sunt"
  "explicabo.\n"
  "Nemo enim ipsam voluptatem quia voluptas"
  "sit aspernatur aut odit aut fugit, sed quia"
  "consequuntur magni dolores eos qui ratione"
  "voluptatem sequi nesciunt.\n"
  "Neque porro quisquam est, qui dolorem"
  "ipsum quia dolor sit amet, consectetur,"
     " adipisci velit, sed quia non numquam eius";

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
                    child: Text("Terms & Condition",
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



            Text(terms,
            style: TextStyle(
                fontSize: 18,
                color: Color(0xff999db5)
            ),)




          ],
        ),
      ),

    );
  }
}
