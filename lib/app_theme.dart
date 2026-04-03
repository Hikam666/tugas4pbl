import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  AppColors._();

  static const bg         = Color(0xFF0A192F);
  static const surface    = Color(0xFF112240);
  static const surface2   = Color(0xFF233554);
  static const cyan       = Color(0xFF3B82F6); // Menjadi aksen Biru
  static const cyanDim    = Color(0xFF2563EB);
  static const warm       = Color(0xFFF5C87A);
  static const text       = Color(0xFFE8EDF4);
  static const muted      = Color(0xFF7A8FA6);
  static const subtle     = Color(0xFF3A4E63);
  static const danger     = Color(0xFFE07070);
  static const success    = Color(0xFF6DCFA0);
  static const border     = Color(0x12FFFFFF);
  static const cyanGlow   = Color(0x403B82F6);
  static const warmGlow   = Color(0x14F5C87A);
  static const successBg  = Color(0x1F6DCFA0);
  static const successBdr = Color(0x336DCFA0);
  static const warmBg     = Color(0x1FF5C87A);
  static const warmBdr    = Color(0x33F5C87A);
  static const dangerBg   = Color(0x1FE07070);
  static const cyanBg     = Color(0x1A3B82F6);
  static const cyanBdr    = Color(0x333B82F6);
}

class AppText {
  AppText._();

  static TextStyle lora({
    double size = 16,
    FontWeight weight = FontWeight.w600,
    Color color = AppColors.text,
    double? letterSpacing,
    FontStyle style = FontStyle.normal,
  }) =>
      GoogleFonts.lora(
        fontSize: size,
        fontWeight: weight,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: style,
      );

  static TextStyle dm({
    double size = 14,
    FontWeight weight = FontWeight.w400,
    Color color = AppColors.text,
    double? letterSpacing,
  }) =>
      GoogleFonts.dmSans(
        fontSize: size,
        fontWeight: weight,
        color: color,
        letterSpacing: letterSpacing,
      );
}