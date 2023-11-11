import 'package:flutter/material.dart';

class SheetButtonIcon extends StatelessWidget {
  final VoidCallback onTap;
  final IconData iconData;
  const SheetButtonIcon({
    Key? key,
    required this.onTap,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: const BorderRadius.horizontal(
            right: Radius.circular(40),
            left: Radius.circular(40),
          ),
        ),
        child: Icon(
          iconData,
          size: 35,
          color: Colors.blue,
        ),
      ),
    );
  }
}
