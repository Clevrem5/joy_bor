import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

abstract class AppStyles {
  static final TextStyle w600s28h119white = GoogleFonts.sora(
    fontSize: 28.sp,
    height: 1.19,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static final TextStyle w400s20h145White70 = GoogleFonts.sora(
    fontSize: 20.sp,
    height: 1.45,
    fontWeight: FontWeight.w400,
    color: AppColors.white70,
  );
  static final TextStyle w600s19white = GoogleFonts.sora(
    fontSize: 19.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final TextStyle w600s24cx100C0C = GoogleFonts.sora(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.cx100C0C,
  );
}
