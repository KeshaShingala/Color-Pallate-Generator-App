
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/color_provider.dart';

class Curated_palettes extends StatefulWidget {
  const Curated_palettes({Key? key}) : super(key: key);

  @override
  State<Curated_palettes> createState() => _Curated_palettesState();
}

class _Curated_palettesState extends State<Curated_palettes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        elevation: 0,
        actions: [
          Icon(Icons.menu,color: Colors.black,size: 30,),
          SizedBox(width: 15,),
        ],
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      backgroundColor: Theme.of(context).primaryColorLight,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text("Curated Palettes",style: TextStyle(
                  color: Color(0xff3A305D),
                  fontSize: 27,
                  fontWeight: FontWeight.w800
              ),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text("Saved Palettes",style: TextStyle(
                color: Color(0xff3A305D),
                fontSize: 20,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
              ),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(width: 10,),
                Container(
                  height: 200,
                  width: 190,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black38,
                          offset: Offset(1,2),
                          blurRadius: 3),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 83,
                            width: 83,
                            decoration: BoxDecoration(
                              color: Color(0xff37306B),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            height: 83,
                            width: 83,
                            decoration: BoxDecoration(
                              color: Color(0xff66347F),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 83,
                            width: 83,
                            decoration: BoxDecoration(
                              color: Color(0xff9E4784),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            height: 83,
                            width: 83,
                            decoration: BoxDecoration(
                              color: Color(0xffD27685),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 190,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black38,
                          offset: Offset(1,2),
                          blurRadius: 3),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 83,
                            width: 83,
                            decoration: BoxDecoration(
                              color: Color(0xff6C9BCF),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            height: 83,
                            width: 83,
                            decoration: BoxDecoration(
                              color: Color(0xff19376D),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 83,
                            width: 83,
                            decoration: BoxDecoration(
                              color: Color(0xffD14D72),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            height: 83,
                            width: 83,
                            decoration: BoxDecoration(
                              color: Color(0xffE5BEEC),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text("Trendy palettes",style: TextStyle(
                  color: Color(0xff3A305D),
                  fontSize: 27,
                  fontWeight: FontWeight.w800
              ),),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.black38,
                            offset: Offset(1,2),
                            blurRadius: 3),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text("Vanilla pallete",style: TextStyle(color: Color(0xff3A305D),fontSize: 17,fontWeight: FontWeight.w600),),
                        ),

                        SizedBox(height: 20,),
                        Row(
                          children: List.generate(
                            4,
                                (index) => Padding(
                              padding: const EdgeInsets.only(left: 20,),
                              child: Container(
                                height: 120,
                                width: 65,
                                decoration: BoxDecoration(
                                    color:
                                    Provider.of<ColorProvider>(context).obj.color[
                                    Random().nextInt(
                                        Provider.of<ColorProvider>(context)
                                            .obj
                                            .color
                                            .length)],
                                    borderRadius: BorderRadius.circular(19)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),

                        InkWell(
                          onTap: () {
                            Provider.of<ColorProvider>(context, listen: false)
                                .changeColor();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color(0xff3A305D),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  "Generate",
                                  style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),

                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.black38,
                            offset: Offset(1,2),
                            blurRadius: 3),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text("Pallete",style: TextStyle(color: Color(0xff3A305D),fontSize: 17,fontWeight: FontWeight.w600),),
                        ),

                        SizedBox(height: 20,),
                        Row(
                          children: List.generate(
                            4,
                                (index) => Padding(
                              padding: const EdgeInsets.only(left: 20,),
                              child: Container(
                                height: 120,
                                width: 65,
                                decoration: BoxDecoration(
                                    color:
                                    Provider.of<ColorProvider>(context).obj.color[
                                    Random().nextInt(
                                        Provider.of<ColorProvider>(context)
                                            .obj
                                            .color
                                            .length)],
                                    borderRadius: BorderRadius.circular(19)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),

                        InkWell(
                          onTap: () {
                            Provider.of<ColorProvider>(context, listen: false)
                                .changeColor();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 100),
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Color(0xff3A305D),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  "Generate",
                                  style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),

                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
