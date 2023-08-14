import 'package:flutter/material.dart';
import '../themes.dart';

class ContainerModel extends StatelessWidget {
  Icon icons;
  ContainerModel(this.icons);

  List<Icon> iconList = [kRewindIcon, kPlayIcon, kFastForwardIcon];
  BoxShadow boxShadow(Color color, Offset offset) {
    return BoxShadow(
      color: color,
      offset: offset,
      blurRadius: 20,
      spreadRadius: 0.0,
    );
  }

  Container containerWidget() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            kBackgroundColor,
            kBackgroundColor,
          ],
        ),
        boxShadow: [
          boxShadow(kBoxShadowTopColor, const Offset(-10, -10)),
          boxShadow(kBoxShadowBottomColor, const Offset(10, 10))
        ],
      ),
      child: icons,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 500,
      color: kBackgroundColor,
      alignment: Alignment.center,
      transformAlignment: Alignment.center,
      child: Container(
        color: kBackgroundColor,
        child: containerWidget(),
      ),
    );
  }
}
