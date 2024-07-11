import 'package:flutter/material.dart';
import 'package:learn_flutter_together/02_widget_rule_2/presentation/component/input_field.dart';
import 'package:learn_flutter_together/02_widget_rule_2/presentation/component/big_button.dart';
import 'package:learn_flutter_together/02_widget_rule_2/presentation/ui/color_styles.dart';

class SigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Text(
                'Hello,',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 57),
              InputField(
                labelText: 'Email',
                hintText: 'Enter Email',
              ),
              SizedBox(height: 16),
              InputField(
                labelText: 'Password',
                hintText: 'Enter Password',
                obscureText: true,
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: ColorStyles.secondary100),
                  ),
                ),
              ),
              SizedBox(height: 24),
              BigButton(label: 'Sign In'),
              SizedBox(height: 24),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100, 
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Or Sign in With',
                        style: TextStyle(
                          color: ColorStyles.gray2,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      width: 100, 
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/facebook.png'),
                  SizedBox(width: 25),
                  Image.asset('assets/google.png'),
                ],
              ),
              SizedBox(height: 55),
              Center(
                child: SizedBox(
                  height: 55,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(text: "Don't have an account? "),
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
