import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension DoubleExtension on double {
  Widget get hight => SizedBox(height: h);
  Widget get width => SizedBox(width: w);
}
