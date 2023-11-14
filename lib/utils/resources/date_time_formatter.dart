/// class for formatting date and time
// import 'package:intl/intl.dart';
//
// class DateTimeFormatter {
//   // Example: 03:30 PM
//   static String formatTime12Hour(DateTime dateTime) {
//     return DateFormat('HH:mm').format(dateTime.toLocal());
//   }
//
// // Thursday 24 May, 2023
//   static String formatDateLongWithDay(DateTime dateTime) {
//     return DateFormat('EEEE d MMMM, y').format(dateTime.toLocal());
//   }
//
// // Example: 11 March, 2024
//   static String formatDateLong(DateTime dateTime) {
//     return DateFormat('dd MMMM, y').format(dateTime.toLocal());
//   }
//
// // Example: 11 March, 3:30 PM
//   static String formatDateWithTime(DateTime dateTime) {
//     return DateFormat('dd MMMM, h:mm a').format(dateTime.toLocal());
//   }
//
// // Example: 3:30 PM, 11 March
//   static String formatTime12HourWithDate(DateTime dateTime) {
//     return DateFormat('HH:mm, dd MMMM').format(dateTime.toLocal());
//   }
//
// // Example: 03.11
//   static String formatMonthAndDay(DateTime dateTime) {
//     return DateFormat('d.M').format(dateTime.toLocal());
//   }
//   // Example: 20th of June
//   static String formatDayWithMonth(DateTime dateTime) {
//     final int day = dateTime.day;
//     final String suffix = _getDaySuffix(day);
//     final String month = DateFormat('MMMM').format(dateTime.toLocal());
//
//     return '$day$suffix ${AppStrings.of(scaffoldKey.currentContext!)} $month';
//   }
//
//   static String _getDaySuffix(int day) {
//     if (day >= 11 && day <= 13) {
//       return 'th';
//     }
//     switch (day % 10) {
//       case 1:
//         return 'st';
//       case 2:
//         return 'nd';
//       case 3:
//         return 'rd';
//       default:
//         return 'th';
//     }
//   }
//
//   //  method to format time as "X hours ago" from a DateTime
//   static String formatTimeAgo(DateTime date) {
//     final DateTime now = DateTime.now();
//     final Duration difference = now.difference(date);
//
//     if (difference.inDays > 0) {
//       final int days = difference.inDays;
//       return '$days day${days > 1 ? 's' : ''} ago';
//     } else if (difference.inHours > 0) {
//       final int hours = difference.inHours;
//       return '$hours hour${hours > 1 ? 's' : ''} ago';
//     } else if (difference.inMinutes > 0) {
//       final int minutes = difference.inMinutes;
//       return '$minutes minute${minutes > 1 ? 's' : ''} ago';
//     } else {
//       return 'Just now';
//     }
//   }
// }
