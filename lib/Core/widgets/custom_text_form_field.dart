// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final bool readOnly;
  final TextInputType keyBoard;
  final int maxLength;
  final VoidCallback ontap;
  const CustomTextFormField({
    Key? key,
    this.controller,
    this.hint,
    this.readOnly = false,
    required this.keyBoard,
    this.maxLength = 6,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      onTap: ontap,
      controller: controller,
      readOnly: readOnly,
      keyboardType: keyBoard,
      inputFormatters: [LengthLimitingTextInputFormatter(maxLength)],
      cursorColor: Colors.black,
      textInputAction: TextInputAction.done,
      maxLines: 1,
      style: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
        fillColor: Colors.white,
        filled: true,
        hintText: hint,
        hintStyle: const TextStyle(
          fontSize: 20,
          color: Colors.blue,
        ),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 0.5,
              color: Colors.white,
            )),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 0.5,
              color: Colors.white,
            )),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: Colors.blue,
            )),
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 0.5,
              color: Colors.white,
            )),
        focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 0.5,
              color: Colors.white,
            )),
      ),
    );
  }
}
