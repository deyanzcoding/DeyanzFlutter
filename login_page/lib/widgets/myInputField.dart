import 'dart:ffi';

import 'package:flutter/material.dart';

import 'app_colors.dart';

class Myinputfield extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final Icon preIcons;
  final Widget? suffIcon;
  final bool enableDisable;
  final bool readOnly;
  final TextInputType keyboardType;

  const Myinputfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.preIcons,
    this.suffIcon,
    this.enableDisable = true,
    this.readOnly = false,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        enabled: enableDisable,
        readOnly: readOnly,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 7),
          hintText: hintText,
          prefixIcon: preIcons,
          suffixIcon: suffIcon,
          filled: true,
          fillColor: Colors.grey.shade200,

          // when app start(no tap)
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.appThemeGrey),
            borderRadius: BorderRadius.circular(20),
          ),

          // when app disable(no entry)
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.appThemeGrey),
            borderRadius: BorderRadius.circular(20),
          ),

          // when click in field(tap)
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: AppColors.appThemeBold.withOpacity(0.6)),
            borderRadius: BorderRadius.circular(22),
          ),

        ),
      ),
    );
  }
}
