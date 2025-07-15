import 'package:flutter/material.dart';

abstract class Style {
  static const TextStyle styleRegular16 = TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Color(0xFF064061));
       static const TextStyle styleRegular14 = TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xFFAAAAAA),
      )
      ;
       static const TextStyle styleRegular12 = TextStyle(
      
      fontFamily: 'Montserrat',
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Color(0xFFAAAAAA));
  static const TextStyle styleBold16 = TextStyle(
      color: Color(0xFF4EB7F2),
      fontFamily: 'Montserrat',
      fontSize: 16,
      fontWeight: FontWeight.w700);
  static const TextStyle styleSemiBold16 = TextStyle(
    color: Color(0xFF064061),
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleSemiBold20 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleSemiBold24 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Color(0xFF4EB7F2)
  );
  static const TextStyle styleSemiBold14 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleSemiBold18 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleMedium16 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle styleMedium20 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}
