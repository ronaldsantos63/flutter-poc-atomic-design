import 'package:flutter/material.dart';
import 'package:flutter_poc_atomic_design/theme/theme.dart';
import 'package:flutter_poc_atomic_design/components/information_card.dart';
import 'package:flutter_poc_atomic_design/widgets/subtitle_text.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: SubtileText(
            text: 'Atomic Design',
          ),
        ),
        backgroundColor: DarwinSecondary,
      ),
      body: InformationCard(
        firstName: 'Ronald',
        lastName: 'Santos',
        birthDay: '25th September 1993',
        pathAvatarImage: './assets/images/avatar.png',
        heartTeamImagePath: './assets/images/para.jpeg',
        pathImageProvinceBirth: './assets/images/paysandu.png',
      ),
    );
  }
}
