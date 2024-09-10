import 'package:virtual_shop/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget applogoWidget(){
//  using velocity X here
  return Image.asset(icAppLogo).box.white.size(77, 77).padding(const EdgeInsets.all(8)).rounded.make();
}