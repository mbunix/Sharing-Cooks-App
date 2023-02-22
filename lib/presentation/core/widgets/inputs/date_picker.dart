import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';

final DateTime current = DateTime.now();
final int currentYear = current.year;
final int currentMonth = current.month;
final int currentDay = current.day;

final int eligibleFutureYear = currentYear + 5;

final DateTime eligibleYear =
    DateTime(currentYear - 18, currentMonth, currentDay);

final int oldestYear = currentYear - 122;

class DatePickerField extends StatelessWidget {
  /// To set the initial value of the field, set the text property of the
  /// [controller]. E.g:
  ///
  /// ```dart
  /// TextEditingController controller = TextEditingController();
  /// controller.text = '11 May 2012';
  ///
  /// DatePickerField(
  ///   controller: controller,
  /// )
  /// ```
  ///
  /// [initialAllowedDate] is the initial valid date time of the date picker. If provided any date before
  /// [initialAllowedDate] cannot be selected.
  const DatePickerField({super.key, 
    required this.controller,
    this.onChanged,
    this.gestureDateKey,
    this.textFieldDateKey,
    this.onSaved,
    this.hintText,
    this.focusNode,
    this.keyboardType,
    this.validator,
    this.suffixIcon,
    this.enabled,
    this.allowCurrentYear = false,
    this.allowFutureYears = false,
    this.allowEligibleDate = false,
    this.customEligibleYear,
    this.decoration,
    this.style,
    this.initialAllowedDate,
  });

  final bool allowCurrentYear;
  final bool allowEligibleDate;
  final bool allowFutureYears;
  final TextEditingController controller;
  final bool? enabled;
  final FocusNode? focusNode;
  final Key? gestureDateKey;
  final String? hintText;
  final TextInputType? keyboardType;
  final FormFieldSetter<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final Icon? suffixIcon;
  final Key? textFieldDateKey;
  final FormFieldValidator<String>? validator;
  final DateTime? customEligibleYear;
  final DateTime? initialAllowedDate;
  final InputDecoration? decoration;
  final TextStyle? style;

  DateTime getLastDate() {
    if (allowCurrentYear && !allowFutureYears) {
      return DateTime(currentYear, currentMonth, currentDay);
    }

    if (allowFutureYears) {
      return DateTime(eligibleFutureYear);
    }

    if (allowEligibleDate) {
      return customEligibleYear ?? eligibleYear;
    }

    return DateTime(eligibleFutureYear);
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? selectedDate;
    final TargetPlatform platform = Theme.of(context).platform;
    if (platform == TargetPlatform.iOS) {
      await showModalBottomSheet(
        context: context,
        builder: (BuildContext builder) {
          return SizedBox(
            height: MediaQuery.of(context).copyWith().size.height / 3,
            child: CupertinoDatePicker(
              onDateTimeChanged: (DateTime newDate) {
                selectedDate = newDate;
              },
              initialDateTime: initialAllowedDate ??
                  (allowCurrentYear
                      ? DateTime(currentYear, currentMonth, currentDay)
                      : eligibleYear),
              minimumDate:
                  initialAllowedDate?.subtract(const Duration(days: 1)) ??
                      DateTime(oldestYear, currentMonth, currentDay),
              minimumYear: initialAllowedDate?.year ?? oldestYear,
              maximumDate: getLastDate(),
              maximumYear: getLastDate().year,
              mode: CupertinoDatePickerMode.date,
            ),
          );
        },
      );
    } else {
      selectedDate = await showDatePicker(
        context: context,
        initialDatePickerMode: DatePickerMode.year,
        initialDate: initialAllowedDate != null
            ? initialAllowedDate!.add(const Duration(days: 1))
            : allowCurrentYear
                ? DateTime(currentYear, currentMonth, currentDay)
                : eligibleYear,
        firstDate: initialAllowedDate ?? DateTime(oldestYear),
        lastDate: getLastDate(),
        builder: (BuildContext? context, Widget? child) {
          return Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: SizedBox(
              height: 700,
              width: 400,
              child: child,
            ),
          );
        },
      );
    }

    if (selectedDate != null) {
      final String date = _convertDateToString(selectedDate!);
      controller.value = controller.value.copyWith(
        text: date,
      );

      onChanged?.call(date);
    }
  }

  String _convertDateToString(DateTime datePicked) {
    return DateFormat(datePickerFormat).format(datePicked);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: gestureDateKey,
      onTap: () async {
        await _selectDate(context);
      },
      child: AbsorbPointer(
        child: TextFormField(
          key: textFieldDateKey,
          readOnly: true,
          decoration: decoration,
          controller: controller,
          keyboardType: keyboardType,
          validator: validator,
          onChanged: onChanged,
          onSaved: onSaved,
          style: style,
        ),
      ),
    );
  }
}
