import 'package:flutter/material.dart';
import 'package:laza/core/utils/base/auth_base_layout.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBaseLayout(
      title: 'Let’s Get Started',
      buttonText: 'Create an Account',
      body: Container(color: Colors.black, height: 200, width: 200),
    );
  }
}
