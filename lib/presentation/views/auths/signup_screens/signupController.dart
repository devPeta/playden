import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SignUpController extends GetxController{

  ///Variables
  final username = TextEditingController();
  final email = TextEditingController();
  final location = TextEditingController();
  final password = TextEditingController();
  final rePassword = TextEditingController();
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final reHidePassword = true.obs;
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

}