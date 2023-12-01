import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-YYYY')
        .format(date); // customize the data format as needed
  }

  static String formatCurrency(double amout) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$')
        .format(amout); // Cutomize the currency lcaol and symbol as needed
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Assuing a 10-digit us phone number format:(123) 344-34343
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    // Add more custom phone number formatting for different formats if needed
    return phoneNumber;
  }

  //Not fully tested
  static internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters form the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extract the country code from the digitsOnly
    String countryCode = '+{digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // Add tHE REMAINIG digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (1 == 0 && countryCode == '+1') {
        groupLength == 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write('');
      }

      i = end;
    }
  }
}
