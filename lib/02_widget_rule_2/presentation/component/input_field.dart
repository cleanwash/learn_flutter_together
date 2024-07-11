import 'package:flutter/material.dart';
import 'package:learn_flutter_together/02_widget_rule_2/presentation/ui/color_styles.dart';
import 'package:learn_flutter_together/02_widget_rule_2/presentation/ui/text_styles.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool obscureText;

  const InputField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText, style: TextStyles.smallTextRegular.copyWith(color: ColorStyles.black)),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: const OutlineInputBorder(),
            hintStyle: TextStyle(fontSize: TextStyles.smallerTextRegular.fontSize, color:ColorStyles.gray4),
          ),
        ),
      ],
    );
  }
}
