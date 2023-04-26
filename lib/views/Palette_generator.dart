import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/color_provider.dart';

class Palette_generator extends StatefulWidget {
  const Palette_generator({Key? key}) : super(key: key);

  @override
  State<Palette_generator> createState() => _Palette_generatorState();
}

class _Palette_generatorState extends State<Palette_generator> {
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
        toolbarHeight: 40,
      ),
      backgroundColor: Theme.of(context).primaryColorLight,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text("Palette Generator",style: TextStyle(
                color: Color(0xff3A305D),
                fontSize: 27,
                fontWeight: FontWeight.w800
            ),
            ),
          ),

          SizedBox(height: 20,),
          Column(
            children: List.generate(
              5,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,bottom: 10),
                    child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                     color:
                      Provider.of<ColorProvider>(context).obj.color[
                      Random().nextInt(
                          Provider.of<ColorProvider>(context)
                              .obj
                              .color
                              .length)],
                      borderRadius: BorderRadius.circular(22)),
              ),
                  ),
            ),
          ),

          SizedBox(height: 20,),

          Row(
            children: [
              SizedBox(width: 40,),
              Icon(Icons.rotate_left_rounded,size: 35,color: Colors.black,),
              SizedBox(width:10,),
              Icon(Icons.rotate_right_rounded,size: 35,color: Colors.grey.shade900),
              Spacer(),
              InkWell(
                onTap: () {
                  Provider.of<ColorProvider>(context, listen: false)
                      .changeColor();
                },
                child: Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xff3A305D),),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Generate",
                      style: TextStyle(color: Color(0xff3A305D),fontSize: 26,fontWeight: FontWeight.w600),

                    ),
                  ),
                ),
              ),

              SizedBox(width: 10,),
            ],
          ),
        ],
      ),
    );
  }
}
