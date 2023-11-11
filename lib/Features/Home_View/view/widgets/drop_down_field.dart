import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownField extends StatefulWidget {
  const DropDownField({super.key});

  @override
  State<DropDownField> createState() => _DropDownFieldState();
}

class _DropDownFieldState extends State<DropDownField> {
  final List<String> _nationalityList = [
    'Egypt',
    'Palestine',
    'Kuwait',
    'Qatar'
  ];
  String? _dropDownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: DropdownButton<String>(
          isExpanded: true,
          style: const TextStyle(color: Colors.blue, fontSize: 20),
          elevation: 10,
          iconSize: 40,
          alignment: Alignment.center,
          dropdownColor: Colors.white,
          items: _nationalityList.map((nationality) {
            return DropdownMenuItem(
              value: nationality,
              alignment: Alignment.center,
              child: Text(nationality),
            );
          }).toList(),
          hint: const Text('Select Nationality'),
          onChanged: (value) {
            setState(() {
              _dropDownValue = value;
            });
          },
          value: _dropDownValue,
          iconEnabledColor: Colors.grey,
        ),
      ),
    );
  }
}
