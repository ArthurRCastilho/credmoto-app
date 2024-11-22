import 'package:flutter/material.dart';

class CustomTextSearchField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final IconData? icon;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onTapSuffixIcon;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final bool? enable;
  final Color? colorIcon;
  final Color? borderColor;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  const CustomTextSearchField({
    super.key,
    this.controller,
    required this.hintText,
    this.icon,
    required this.prefixIcon,
    this.suffixIcon,
    this.onTapSuffixIcon,
    this.onChanged,
    this.onEditingComplete,
    this.enable,
    this.colorIcon,
    this.borderColor,
    this.focusNode,
    this.onFieldSubmitted,
  });

  String? validator(String? value) {
    if (value!.length > 30) {
      return 'O texto é muito longo';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: TextFormField(
        focusNode: focusNode,
        enabled: enable,
        controller: controller,
        keyboardType: TextInputType.text,
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        onFieldSubmitted: onFieldSubmitted,
        validator: validator,
        maxLength: 30,
        decoration: InputDecoration(
          counterText: '',
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
          ),
          suffixIcon: IconButton(
            onPressed: onTapSuffixIcon,
            icon: Icon(suffixIcon, color: colorIcon),
          ),
          prefixIcon: Icon(prefixIcon, color: colorIcon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: borderColor ?? Colors.grey.shade400),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: borderColor ?? Colors.grey.shade400,
              width: 2.0,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey.shade400,
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: borderColor ?? Colors.grey.shade400,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}