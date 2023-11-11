import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelsgo_task/Core/widgets/custom_button.dart';
import 'package:hotelsgo_task/Features/Home_View/view/widgets/sheet_btn_body.dart';

class FinalSheetButton extends StatelessWidget {
  const FinalSheetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      backgroundColor: Colors.blue,
      onPressed: () => modelSheet(context),
      width: double.infinity,
      height: 50.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Find Hotels',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(width: 10.w),
          const Icon(
            Icons.search,
            size: 30,
          )
        ],
      ),
    );
  }

//* showModalBottomSheet//
  Future modelSheet(BuildContext context) async {
    return showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return const SheetButtonBody();
      },
    );
  }
}
