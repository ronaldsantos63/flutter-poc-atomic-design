import 'package:flutter/material.dart';
import 'package:flutter_poc_atomic_design/theme/theme.dart';

import '../widgets/body_text.dart';
import '../widgets/rounded_image.dart';
import '../widgets/subtitle_text.dart';
import '../widgets/title_text.dart';

class InformationCard extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String heartTeamImagePath;
  final String birthDay;
  final String pathAvatarImage;
  final String pathImageProvinceBirth;

  const InformationCard(
      {Key key,
      this.firstName,
      this.lastName,
      this.heartTeamImagePath,
      this.birthDay,
      this.pathAvatarImage,
      this.pathImageProvinceBirth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: spacer.all.xs,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                stops: [0, 1],
                colors: [DarwinPrimary, DarwinSecondary],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(gridSpacer),
            ),
            padding: spacer.x.md + spacer.top.xs,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubtileText(
                          text: firstName,
                        ),
                        TitleText(
                          text: lastName,
                        ),
                        SizedBox(
                          height: gridSpacer * 1.5,
                        ),
                        buildBirthdaySection(),
                        SizedBox(
                          height: gridSpacer * 3,
                        ),
                        buildHorizontalImageSection(),
                        SizedBox(
                          height: gridSpacer * 2,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    pathAvatarImage,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBirthdaySection() {
    return Row(
      children: [
        Icon(
          Icons.event,
          color: DarwinMuted,
          size: gridSpacer * 2,
        ),
        SizedBox(
          width: gridSpacer,
        ),
        BodyText(
          text: birthDay,
        ),
      ],
    );
  }

  Widget buildHorizontalImageSection() {
    return Row(
      children: [
        Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: gridSpacer * 4,
              child: RoundedImage(
                pathImage: heartTeamImagePath,
              ),
            ),
            RoundedImage(
              pathImage: pathImageProvinceBirth,
            ),
          ],
        ),
      ],
    );
  }
}
