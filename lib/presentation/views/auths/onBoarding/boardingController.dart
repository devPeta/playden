import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';
import 'package:playden/presentation/views/auths/onBoarding/preLogin.dart';

class BoardingController extends GetxController{
  static BoardingController get instance => Get.find();
  Rx<String> buttonText = 'Next'.obs;
  /// Variables
  final pageController = PageController();

  Rx<int> currentPageIndex = 0.obs;


  /// Update Current Index Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;



  /// Jump to the specific dot selected page.
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }


  /// Update Current Index X jump to next Page
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.to(const preLogin());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }


  /// Update Current Index X jump to last Page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}
