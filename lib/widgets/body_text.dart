import 'package:flutter/material.dart';
import 'package:flutter_poc_atomic_design/theme/theme.dart';

class BodyText extends StatelessWidget {
  final String text;

  const BodyText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText2.copyWith(
            color: DarwinMuted,
          ),
    );
  }
}
