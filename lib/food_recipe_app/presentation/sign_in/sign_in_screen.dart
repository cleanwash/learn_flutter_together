import 'package:flutter/material.dart';
import '../component/big_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BigButton(
          title: 'Button',
          onTap: () {},
        ),
      ),
    );
  }
}