// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomTableCalendar extends StatefulWidget {
  const CustomTableCalendar({
    Key? key,
  }) : super(key: key);

  @override
  _CustomTableCalendarState createState() => _CustomTableCalendarState();
}

class _CustomTableCalendarState extends State<CustomTableCalendar> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime today) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        const Text('Date'),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mediaQuery.size.width * 0.05,
          ),
          child: Material(
            elevation: 4.0,
            borderRadius: BorderRadius.circular(17),
            child: TableCalendar(
              rowHeight: 43,
              headerStyle: const HeaderStyle(
                titleCentered: true,
                formatButtonVisible: false,
              ),
              onDaySelected: _onDaySelected,
              selectedDayPredicate: (day) => isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime.utc(2010, 1, 31),
              lastDay: DateTime.utc(2040, 10, 27),
              availableGestures: AvailableGestures.all,
            ),
          ),
        ),
      ],
    );
  }
}
