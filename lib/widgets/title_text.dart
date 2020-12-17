import 'package:flutter/material.dart';
import 'package:flutter_poc_atomic_design/theme/theme.dart';

class TitleText extends StatelessWidget {
  final String text;

  const TitleText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4.copyWith(
            color: DarwinWhite,
            fontWeight: FontWeight.w900,
            height: 1.1,
          ),
    );
  }
}
