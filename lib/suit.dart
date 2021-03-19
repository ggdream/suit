library suit;

import 'package:flutter/widgets.dart';

class Adapter {
  static double vw = 0.0;
  static double vh = 0.0;

  static double aspectRatio = 0.0;
  static EdgeInsets padding = EdgeInsets.all(0.0);

  static void initialize(BuildContext context) {
    var mediaMeta = MediaQuery.of(context);

    vw = mediaMeta.size.width / 100;
    vh = mediaMeta.size.height / 100;
    aspectRatio = mediaMeta.size.aspectRatio;
    padding = mediaMeta.padding;
  }

  static double setVW(double size) => Adapter.vw * size;
  static double setVH(double size) => Adapter.vh * size;
}

extension AdaptIntType on int {
  double get vw => Adapter.setVW(this.toDouble());
  double get vh => Adapter.setVH(this.toDouble());
}

extension AdaptIntDoubleType on double {
  double get vw => Adapter.setVW(this);
  double get vh => Adapter.setVH(this);
}
