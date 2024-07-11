import 'package:flutter/material.dart';
import 'package:learn_flutter_together/02_widget_rule_2/presentation/component/input_field.dart';
import 'package:learn_flutter_together/02_widget_rule_2/presentation/component/big_button.dart';
import 'package:learn_flutter_together/02_widget_rule_2/presentation/ui/color_styles.dart';
import 'package:learn_flutter_together/02_widget_rule_2/presentation/ui/text_styles.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              Text(
                'Hello,',
                style: TextStyles.headerTextBod,
              ),
              Text(
                'Welcome Back!',
                style: TextStyles.largeTextRegular,
              ),
              const SizedBox(height: 57),
              const InputField(
                labelText: 'Email',
                hintText: 'Enter Email',
              ),
              const SizedBox(height: 16),
              const InputField(
                labelText: 'Password',
                hintText: 'Enter Password',
                obscureText: true,
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyles.smallTextRegular.copyWith(color: ColorStyles.secondary100),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const BigButton(label: 'Sign In'),
              const SizedBox(height: 24),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
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
                        style: TextStyles.smallerTextRegular.copyWith(color: ColorStyles.gray2),
                      ),
                    ),
                    SizedBox(
                      width: 100, 
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/google.png'),
                  const SizedBox(width: 25),
                  Image.asset('assets/facebook.png'),
                ],
              ),
              const SizedBox(height: 55),
              Center(
                child: SizedBox(
                  height: 55,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyles.normalTextRegular.copyWith(color: Colors.black),
                      children: [
                        const TextSpan(text: "Don't have an account? "),
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyles.normalTextRegular.copyWith(color: Colors.orange),
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
