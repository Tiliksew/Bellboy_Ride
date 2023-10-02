import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../theme/style.config.dart';
import '../../../../translations/translation_keys.dart' as keys;

class NewLine extends StatelessWidget {
  const NewLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15.h,
    );
  }
}

class Anchors extends StatelessWidget {
  const Anchors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(keys.findEmail.tr, style: anchorTextStyle),
        const Text("|"),
        Text(keys.findPassword.tr, style: anchorTextStyle),
      ],
    );
  }
}
