import 'package:flutter/material.dart';
import 'package:get/get.dart';

class recoverypassword2Controller extends GetxController{

  ///Variables
  final password = TextEditingController();
  final rePassword = TextEditingController();
  final hidePassword = true.obs;
  final hideConfirmPassword = true.obs;

  GlobalKey<FormState> recoveryPassword2FormKey = GlobalKey<FormState>();

}