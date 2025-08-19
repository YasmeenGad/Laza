import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthBaseBody extends StatelessWidget {
  const AuthBaseBody({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Center(
          child: body,
        ),
      ),
    );
  }
}
