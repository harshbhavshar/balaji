
import 'package:balaji/Page/shoppage.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';

appar(){
  return AppBar(
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.white,
    title:Image.asset('assets/logo.png',height: 60,),
    toolbarHeight: 65,
    automaticallyImplyLeading: false,
    actions: [
      IconButton(onPressed: (){}, icon: Icon(CarbonIcons.search)),
      IconButton(onPressed: (){}, icon: Icon(CarbonIcons.service_desk)),
    ],
  );
}
txt(String data, double fs, FontWeight fw){
  return Text(data,
    style: TextStyle(
      fontSize: fs,
      fontWeight: fw,
  ),);
}
card(String img,String data){
  return Padding(
    padding: const EdgeInsets.only(left: 1.0),
    child: Card(
      elevation: 1,
      color: Colors.white,
      shadowColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(img,width: 40,height: 40,),
            SizedBox(width: 4,),
            txt(data, 15, FontWeight.normal)
          ],
        ),
      ),
    ),
  );
}
card2(context,String img,String data,int price,Color color){
  return InkWell(
    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Shop(name: img, color: color,)));},
    child: Card(
      child: SizedBox(
        width: 180,
        height: 300,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(img,height: 180,),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    txt(data, 16, FontWeight.bold),
                    txt('FLAVORED', 10, FontWeight.normal),
                  ],
                ),
                txt('⭐4.9', 20, FontWeight.normal),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  txt("₹"+price.toString(), 20, FontWeight.normal),
                  InkWell(
                   // onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Shop(name: img, color: color,)));},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEC5F11),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(CarbonIcons.shopping_bag,color: Colors.white,),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
review(String name){
  return Card(
    color: Color(0xff7C7B80),
      child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image.asset(name,width: 40,height: 40,),
  ));
}