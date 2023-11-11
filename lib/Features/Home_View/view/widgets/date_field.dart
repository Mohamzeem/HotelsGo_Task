import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotelsgo_task/Core/widgets/custom_text_form_field.dart';
import 'package:intl/intl.dart';

class DateField extends StatefulWidget {
  const DateField({super.key});

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  //* controllers for dates
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();

  //* get start date function//
  Future _getStartDate() async {
    DateTime? startDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
    if (startDate != null) {
      String formattedDate = DateFormat('dd-MM-yyyy').format(startDate);
      setState(() {
        startDateController.text = formattedDate;
      });
    }
  }

  //* get end date function//
  Future _getEndDate() async {
    String dateTime = startDateController.text;
    DateFormat inputFormat = DateFormat('dd-MM-yyyy');
    DateTime input = inputFormat.parse(dateTime);
    DateTime? endDate = await showDatePicker(
      context: context,
      initialDate: input.add(const Duration(days: 1)),
      firstDate: input.add(const Duration(days: 1)),
      lastDate: DateTime(2025),
    );
    if (endDate != null) {
      String formattedDate = DateFormat('dd-MM-yyyy').format(endDate);
      setState(() {
        endDateController.text = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFormField(
            controller: startDateController,
            keyBoard: TextInputType.text,
            hint: 'Start Date',
            ontap: () {
              _getStartDate();
            },
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: CustomTextFormField(
            controller: endDateController,
            keyBoard: TextInputType.text,
            hint: 'End Date',
            ontap: () {
              _getEndDate();
            },
            readOnly: true,
          ),
        )
      ],
    );
  }
}
