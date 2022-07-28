import 'package:balaji/Page/reuseble.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              txt("Choose your \nfavourite flavour",30,FontWeight.bold),
              SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    card('assets/sal.jpg', 'simple salty'),

                   card('assets/p.jpg', 'pizzy Masala'),
                    card('assets/ch.jpg', 'Masala masti'),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    card2(context,"assets/ss.png", 'simplesolty', 30,Color(0xffF6993C)),
                    card2(context,"assets/p.png", 'simplesolty', 30,Color(0xffB842A2)),
                    card2(context,"assets/mm.png", 'simplesolty', 30,Color(0xff4593D5)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  txt("Reviews", 22, FontWeight.bold),
                  txt("See all", 15, FontWeight.bold),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      review('assets/r1.png'),
                      review('assets/r2.png'),
                      review('assets/r3.png'),
                      review('assets/r4.png'),
                    ],
                  ),
                  FloatingActionButton(
                    backgroundColor: Color(0xffEC5F11),
                    onPressed:(){},
                    child: Icon(CarbonIcons.add),)
                ],

              ),
              SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
