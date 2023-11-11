import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelsgo_task/Core/widgets/custom_text_form_field.dart';
import 'package:hotelsgo_task/Features/Home_View/view/widgets/date_field.dart';
import 'package:hotelsgo_task/Features/Home_View/view/widgets/drop_down_field.dart';
import 'package:hotelsgo_task/Features/Home_View/view/widgets/sheet_btn.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //* back ground photo//
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/attachment3.webp',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(height: 200.h),
                //* text form field//
                CustomTextFormField(
                  hint: 'Select City',
                  keyBoard: TextInputType.text,
                  ontap: () {},
                ),
                SizedBox(height: 10.h),
                //* date field//
                const DateField(),
                SizedBox(height: 10.h),
                //* dropdown field//
                const DropDownField(),
                SizedBox(height: 10.h),
                //* final button//
                const FinalSheetButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
