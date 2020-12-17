import 'package:flutter/material.dart';
import 'package:flutter_poc_atomic_design/theme/theme.dart';

class SubtileText extends StatelessWidget {
  final String text;
  const SubtileText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.subtitle2.copyWith(
            color: DarwinWhite,
            fontWeight: FontWeight.w700,
            height: 1.0,
          ),
    );
  }
}
