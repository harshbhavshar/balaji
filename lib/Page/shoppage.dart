import 'package:balaji/Page/reuseble.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Shop extends StatelessWidget {
  String name;
  Color color;
   Shop({required this.name,required this.color});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: appar(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 31.0,left: 8),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                  child: Image.asset('assets/logo.png',height: 60,)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      transform: Matrix4.translationValues(size.width/2.3,-55.0, 0.0),
                      child: Container(
                        height: size.height/1.6,
                        width: size.width/1.2,
                       decoration: BoxDecoration(
                         color: color,
                         borderRadius: BorderRadius.circular(30)
                       ),
                        transform: Matrix4.rotationZ(0.3),

                      ),
                    ),
                //    Center(child: Image.asset("assets/ch1.png",)),
                    Container(
                      transform: Matrix4.translationValues(size.width/2.3,size.height/10, 0.0),
                      child: Container(
                          transform: Matrix4.rotationZ(0.3),
                          child:  Image.asset(name,width: 200,)),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("With Flavors \nAlmost As Rich As\nOur History",style: GoogleFonts.rammettoOne(
                          textStyle: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold
                          )
                      ),),
                      //txt( 40, FontWeight.bold),
                      SizedBox(height: 10,),
                      txt("It all starts with fresh farm-grown potatoes\ncooked and seasoned to perfection .", 15, FontWeight.normal),
                      SizedBox(height: 20,),
                      Card(
                        color: color,
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset('assets/chips.png',width: 40,),
                                SizedBox(width: 10,),
                                Text('Shop Now',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
