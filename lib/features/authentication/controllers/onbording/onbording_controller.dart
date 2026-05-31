import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBordingController extends GetxController{

  static OnBordingController get instance => Get.find();

  //Variable
  final pageController = PageController();
  RxInt currentIndex = 0.obs;

  // Update current index when page scroll
  void updatePageIndicator (index) {
    currentIndex.value = index;
  }
  // Jump to specific dot selected page
  void dotNavigationClick(index){
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }
  // Update current index and jump to the next page
  void nextPage(){
    if(currentIndex.value == 2){
      return;
    }
    currentIndex.value++;
    pageController.jumpToPage(currentIndex.value);
  }
  // Update current index and jump to the last page
  void skipPage(){
    currentIndex.value = 2; // when current index value is 2 jump to 2nd index
    pageController.jumpToPage(currentIndex.value);
  }
}


