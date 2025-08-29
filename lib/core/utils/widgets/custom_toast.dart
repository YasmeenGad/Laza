import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:laza/core/styles/app_colors.dart';

class CustomToast {
  static void showToast({
    required String message,
    required Color backgroundColor,
    required ToastGravity gravity,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: gravity,
      timeInSecForIosWeb: 1,
      backgroundColor: backgroundColor,
      textColor: Colors.white,
      fontSize: 16.0.sp,
    );
  }

  static void showErrorToast({required String message}) {
    showToast(
      message: message,
      backgroundColor: AppColors.kRedColor,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static void showSuccessToast({required String message}) {
    showToast(
      message: message,
      backgroundColor: AppColors.kPrimaryColor,
      gravity: ToastGravity.BOTTOM,
    );
  }
}
