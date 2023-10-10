import 'package:flutter/material.dart';
import 'package:get/get.dart';


Widget navigationText({
  required String routePath, 
  required String navText, 
  required TextStyle textStyle}) {
  
  return InkWell(
      onTap: () => Get.toNamed(routePath),
      child: Text(
        navText,
        style: textStyle,
      )
  );
}