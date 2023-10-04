import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KaloTheme {
  static const Color primaryColor = Color(0xFF0057DD);
  static const Color secondaryColor = Color(0xFF52ACFF);
  static const Color blueColor = Color(0xFF307CEC);

  static final ThemeData theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
  );

  static final TextStyle textStyle = GoogleFonts.poppins(
    fontSize: 18,
  );

  static final TextStyle acuminTextStyle = GoogleFonts.roboto(
    fontSize: 18,
  );
}
