import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotelsgo_task/Core/widgets/custom_button.dart';
import 'package:hotelsgo_task/Features/Home_View/controller/home_controller.dart';
import 'package:hotelsgo_task/Features/Home_View/view/widgets/sheet_btn_icon.dart';

class SheetButtonBody extends StatelessWidget {
  const SheetButtonBody({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            //* rooms and guests row//
            Container(
              width: double.infinity,
              height: 75.h,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(child: SizedBox()),
                  const Text(
                    'Rooms and Guests',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                      child: SizedBox(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () => Get.back(),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.close,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  //* rooms row//
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    width: double.infinity,
                    height: 70.h,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Row(
                      children: [
                        const Text(
                          'Rooms',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        const Spacer(),
                        SheetButtonIcon(
                          onTap: () => controller.increment(controller.rooms),
                          iconData: Icons.add,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: Text(
                            '${controller.roomsNum.value}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        SheetButtonIcon(
                          onTap: () => controller.decrement(controller.rooms),
                          iconData: Icons.remove,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  //* room 1 row//
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    width: double.infinity,
                    height: 300.h,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //* room 1 //
                        Padding(
                          padding: EdgeInsets.only(top: 20.h, bottom: 15.h),
                          child: const Text(
                            'Room 1',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        //* adults//
                        Row(
                          children: [
                            const Text(
                              'Adults',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 22),
                            ),
                            const Spacer(flex: 1),
                            SheetButtonIcon(
                              onTap: () =>
                                  controller.increment(controller.adults),
                              iconData: Icons.add,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              child: Text(
                                '${controller.adultNums.value}',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            SheetButtonIcon(
                              onTap: () =>
                                  controller.decrement(controller.adults),
                              iconData: Icons.remove,
                            ),
                          ],
                        ),
                        SizedBox(height: 15.h),
                        //* children//
                        Row(
                          children: [
                            const Text(
                              'Children',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 22),
                            ),
                            const Spacer(flex: 1),
                            SheetButtonIcon(
                              onTap: () =>
                                  controller.increment(controller.childrens),
                              iconData: Icons.add,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              child: Text(
                                '${controller.chieldrensNum.value}',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            SheetButtonIcon(
                              onTap: () =>
                                  controller.decrement(controller.childrens),
                              iconData: Icons.remove,
                            ),
                          ],
                        ),
                        SizedBox(height: 25.h),
                        //* age of child 1//
                        const Row(
                          children: [
                            Text(
                              'Age of Chield 1',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '14 years',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        //* age of child 2//
                        const Row(
                          children: [
                            Text(
                              'Age of Chield 2',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '14 years',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  //* pet row//
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    width: double.infinity,
                    height: 75.h,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //* pet-friendly + mark//
                            Row(
                              children: [
                                const Text(
                                  'Pet-Friendly',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 22),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                  child: const Icon(
                                    Icons.info_outline,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'Only show stays that allow pets',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                        //*switch botton//
                        AdvancedSwitch(
                          controller: controller.switchController,
                          width: 60.w,
                          height: 35.h,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 150.h),
                  //* apply button//
                  CustomButton(
                    onPressed: () {},
                    width: double.infinity,
                    height: 60,
                    child: const Text(
                      'Apply',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
