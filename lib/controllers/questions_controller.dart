import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

//Wee use get package for our state management
class QuestionController extends GetxController with SingleGetTickerProviderMixin{
  //Let animated our progress bar
  late AnimationController _animationController;
  late Animation _animation;
  //So that we can access our animation outside

  Animation get animation => this._animation;

  //Called immediately after the widget is allocated memory
  @override
  void onInit() {
    //Our animation duration is 60 s
    //so our plan is to fill the progress bar within 60s
    _animationController = AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween(begin:0.0,end:1.0).animate(_animationController)..addListener(() {
      //update like setState
      update();
    });

    //start our animation
    _animationController.forward();
    super.onInit();
  }
}
