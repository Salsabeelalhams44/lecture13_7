import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouterApp{
  RouterApp._();
  static RouterApp rout = RouterApp._();
  GlobalKey <NavigatorState> navkey = GlobalKey <NavigatorState>();
  pushFunction(Widget widget ){
    navkey.currentState.push(
      MaterialPageRoute(
        builder: (context){
          return widget ;
        }));
  }
  pushNamedFunction(String routeName){
    navkey.currentState.pushNamed(routeName);
  }
}