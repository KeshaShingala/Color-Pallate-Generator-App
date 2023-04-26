import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/them_provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
            child: Container(
              alignment: Alignment.center,
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff203850),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Colors.black38,
                  offset: Offset(2,4),
                  blurRadius: 5),
                ],
              ),
              child: Image.asset("assets/images/istockphoto-1220987306-612x612.jpg"),
            ),
          ),
          SizedBox(height: 15,),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text("Color  Planning",style: TextStyle(
                    color: Color(0xff3A305D),
                    shadows: [
                      Shadow(
                        blurRadius: 6,
                       color: Colors.white10,
                        offset: Offset(1, 2),
                      ),
                    ],
                    letterSpacing: 0,
                    fontSize: 26,
                    fontWeight: FontWeight.w800
                ),),
              ),
              SizedBox(width: 15,),
              IconButton(onPressed: (){
                Provider.of<ThemeProvider>(context, listen: false).changeTheme();
              }, icon: Icon(Icons.brightness_4_sharp,color:Colors.black,size: 30,))
            ],
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: InkWell(
              onTap: (){
                setState((){
                  Navigator.of(context).pushNamed('Curated_palettes');
                });
              },
              child: Container(
                height: 270,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffFFBCD5),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(color: Colors.black38,
                        offset: Offset(2,4),
                        blurRadius: 5),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/images2.png",height: 220,),
                    Text("Curated Palettes",style: TextStyle(
                        color: Color(0xff3A305D),
                        letterSpacing: 0,
                        fontSize: 20,
                        fontWeight: FontWeight.w800
                    ),),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: InkWell(
              onTap: (){
                setState((){
                  Navigator.of(context).pushNamed('Palette_generator');
                });
              },
              child: Container(
                height: 270,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffAEC8F8),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(color: Colors.black38,
                        offset: Offset(2,4),
                        blurRadius: 5),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/images1.png",height: 220,),
                    Text("Palette Generator",style: TextStyle(
                    //  color: ,
                       color: Color(0xff3A305D),
                        letterSpacing: 0,
                        fontSize: 20,
                        fontWeight: FontWeight.w800
                    ),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    // backgroundColor: Colors.white,
    //  backgroundColor: Color(0xffFCE0E3),
    );
  }
}
