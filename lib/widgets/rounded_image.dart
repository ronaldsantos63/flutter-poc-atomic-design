import 'package:flutter/material.dart';
import 'package:flutter_poc_atomic_design/theme/theme.dart';

class RoundedImage extends StatelessWidget {
  final String pathImage;

  const RoundedImage({Key key, this.pathImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: spacer.all.xxs,
      width: gridSpacer * 6,
      height: gridSpacer * 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(gridSpacer * 8),
        color: DarwinWhite,
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 4.0),
            color: DarwinPrimaryDarkShadow,
            blurRadius: gridSpacer * 5,
          ),
        ],
      ),
      child: Image.asset(
        pathImage,
        height: gridSpacer * 2,
      ),
    );
  }
}
