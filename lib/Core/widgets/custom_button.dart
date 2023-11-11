import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double width;
  final double height;
  final double? threeRadius;
  final double? lastRadius;
  final Color? backgroundColor;
  final Widget child;
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.width,
    required this.height,
    this.lastRadius,
    this.threeRadius,
    this.backgroundColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(threeRadius ?? 10),
              topRight: Radius.circular(threeRadius ?? 10),
              bottomRight: Radius.circular(threeRadius ?? 10),
              bottomLeft: Radius.circular(lastRadius ?? 10),
            ),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
