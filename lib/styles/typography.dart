import 'package:belajar_sistem_pajak/styles/colors.dart';
import 'package:flutter/material.dart';

class Tulisan {
  static TextStyle Headline(
      {String fontFamily = 'Inter',
      double fontSize = 56,
      FontWeight fontWeight = FontWeight.bold,
      Color color = Warna.white,
      double letterSpacing = -3.0, // Mengatur jarak antar huruf

      Color shadowColor = Warna.transparent,
      double shadowBlurRadius = 52.0,
      TextAlign textAlign = TextAlign.left}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
      letterSpacing: letterSpacing,
      shadows: [
        Shadow(
          blurRadius: shadowBlurRadius,
          color: shadowColor,
          offset: Offset(0, 0),
        ),
      ],
    );
  }

  // Menyediakan metode untuk membuat gaya teks dengan berbagai pengaturan
  static TextStyle H1_5({
    String fontFamily = 'Inter',
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.bold,
    Color color = Warna.white,
    TextAlign textAlign = TextAlign.center,
    Color shadowColor = Warna.transparent,
    double shadowBlurRadius = 52.0,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
      shadows: [
        Shadow(
          blurRadius: shadowBlurRadius,
          color: shadowColor,
          offset: Offset(0, 0),
        ),
      ],
    );
  }

  static TextStyle H1(
      {String fontFamily = 'Inter',
      double fontSize = 28,
      FontWeight fontWeight = FontWeight.bold,
      Color color = Warna.white,
      TextAlign textAlign = TextAlign.center}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
    );
  }

  static TextStyle H2(
      {String fontFamily = 'Inter',
      double fontSize = 32,
      FontWeight fontWeight = FontWeight.bold,
      Color color = Warna.white,
      TextAlign textAlign = TextAlign.left}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
    );
  }

  static TextStyle H3({
    String fontFamily = 'Inter',
    double fontSize = 40,
    FontWeight fontWeight = FontWeight.bold,
    Color color = Warna.white,
    TextAlign textAlign = TextAlign.left,
    Color shadowColor = Warna.transparent,
    double shadowBlurRadius = 52.0,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
      shadows: [
        Shadow(
          blurRadius: shadowBlurRadius,
          color: shadowColor,
          offset: Offset(0, 0),
        ),
      ],
    );
  }

  static TextStyle H4(
      {String fontFamily = 'Inter',
      double fontSize = 56,
      FontWeight fontWeight = FontWeight.bold,
      Color color = Warna.white,
      TextAlign textAlign = TextAlign.left}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
    );
  }

  static TextStyle subtitle({
    String fontFamily = 'Inter',
    double fontSize = 18,
    FontWeight fontWeight = FontWeight.w700,
    Color color = Warna.white,
    TextAlign textAlign = TextAlign.center,
    Color shadowColor = Warna.transparent,
    double shadowBlurRadius = 52.0,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
      shadows: [
        Shadow(
          blurRadius: shadowBlurRadius,
          color: shadowColor,
          offset: Offset(0, 0),
        ),
      ],
    );
  }

  static TextStyle buttonJawaban(
      {String fontFamily = 'Inter',
      double fontSize = 14,
      FontWeight fontWeight = FontWeight.w700,
      Color color = Warna.black,
      TextAlign textAlign = TextAlign.center}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
    );
  }

  static TextStyle description(
      {String fontFamily = 'Inter',
      double fontSize = 14,
      FontWeight fontWeight = FontWeight.w300,
      Color color = Warna.white,
      TextAlign textAlign = TextAlign.center}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
    );
  }

  static TextStyle small(
      {String fontFamily = 'Inter',
      double fontSize = 12,
      FontWeight fontWeight = FontWeight.w300,
      Color color = Warna.white,
      TextAlign textAlign = TextAlign.center}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
    );
  }

  static TextStyle commic(
      {String fontFamily = 'Schoolbell',
      double fontSize = 20,
      FontWeight fontWeight = FontWeight.w400,
      Color color = Warna.white,
      TextAlign textAlign = TextAlign.left}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
    );
  }

  static TextStyle chat(
      {String fontFamily = 'Schoolbell',
      double fontSize = 16,
      FontWeight fontWeight = FontWeight.w400,
      Color color = Warna.white,
      TextAlign textAlign = TextAlign.left}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
    );
  }
}
