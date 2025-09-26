import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension StringBufferTextExtension on StringBuffer {
  /// Converts the accumulated text in the StringBuffer to a `Text` widget
  /// with a specified `TextStyle`.
  Text toText({TextStyle? style, TextAlign? textAlign}) {
    return Text(
      toString(),
      style: style,
      textAlign: textAlign,
    );
  }
}

extension SizedBoxExtension on num {
  /// Converts a numeric value to a vertical `SizedBox` with the height
  /// equal to the numeric value.
  SizedBox get height => SizedBox(height: toDouble().h);

  /// Converts a numeric value to a horizontal `SizedBox` with the width
  /// equal to the numeric value.
  SizedBox get width => SizedBox(width: toDouble().w);
}
