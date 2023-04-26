import 'package:flutter/material.dart';
import '../modal/color_modal.dart';

class ColorProvider extends ChangeNotifier {
  Data obj = Data(color: [
    Color(0xffFFEBEB),
    Color(0xffADE4DB),
    Color(0xff6DA9E4),
    Color(0xffF6BA6F),
    Color(0xffE5BEEC),
    Color(0xff917FB3),
    Color(0xff2A2F4F),
    Color(0xff088395),
    Color(0xffB71375),
    Color(0xff9CA777),
    Color(0xffF1F6F9),
    Color(0xff97DEFF),
    Color(0xff567189),
    Color(0xffA0E7E5),
    Color(0xff41729F),
    Color(0xffBFCCB5),
    Color(0xffF5C6EC),
    Color(0xffB8E7E1),
    Color(0xff9E6F21),
    Color(0xffFFEEB3),

  ]);

  changeColor() {
    notifyListeners();
  }
}