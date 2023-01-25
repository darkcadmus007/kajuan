import 'package:flutter/material.dart';
import 'package:kajuan/components/text_field_container.dart';
import 'package:kajuan/Utilities/constants.dart';

class RoundedInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final bool isEnable;

  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.isEnable,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        enabled: isEnable,
        controller: controller,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
