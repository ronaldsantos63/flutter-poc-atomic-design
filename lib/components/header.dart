import 'package:flutter/material.dart';
import 'package:flutter_poc_atomic_design/theme/theme.dart';

class Header extends StatelessWidget {
  final String title;
  final double toolbarHeight;
  final PreferredSizeWidget bottom;

  Header({Key key, @required this.title, this.toolbarHeight, this.bottom})
      : assert(title != null),
        super(key: key);

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: DarwinWhite,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      backgroundColor: DarwinSecondary,
    );
  }
}
